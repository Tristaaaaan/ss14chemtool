import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ss14chemtool/core/usecases/usecase.dart';
import 'package:ss14chemtool/features/reagents/domain/usecases/get_reagents.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/reagent.dart';

import 'reagent_state.dart';

class ReagentCubit extends Cubit<ReagentState> {
  final GetReagent getReagentUseCase;
  ReagentCubit({required this.getReagentUseCase})
    : super(const ReagentState.initial()) {
    fetchInitial();
  }

  static const pageSize = 25;

  int _offset = 0;
  bool _hasMore = true;
  bool _isLoading = false;
  String _searchQuery = '';

  final List<ReagentEntity> _items = [];

  bool get isLoadingMore => _isLoading;

  Future<void> fetchInitial() async {
    if (_isLoading) return;

    _offset = 0;
    _items.clear();
    _hasMore = true;

    emit(const ReagentState.loading());
    await _load();
  }

  Future<void> search(String query) async {
    if (_searchQuery == query) return;

    _searchQuery = query;

    _offset = 0;
    _items.clear();
    _hasMore = true;

    emit(const ReagentState.loading());
    await _load();
  }

  /// 🔹 LOAD MORE (Pagination)
  Future<void> loadMore() async {
    if (!_hasMore || _isLoading) return;
    await _load();
  }

  // / 🔹 INTERNAL LOAD
  Future<void> _load() async {
    if (isClosed) return;

    _isLoading = true;

    final either = await getReagentUseCase(
      GetReagentParams(offset: _offset, searchQuery: _searchQuery),
    ).run();

    if (isClosed) return;

    either.fold(
      (failure) {
        _isLoading = false;
        emit(ReagentState.error(failure.message ?? failure.toString()));
      },
      (data) {
        _hasMore = data.isNotEmpty && data.length == pageSize;

        if (data.isNotEmpty) {
          _offset += data.length;
          _items.addAll(data);
        }

        emit(
          _items.isEmpty
              ? const ReagentState.empty()
              : ReagentState.loaded(List.unmodifiable(_items), _hasMore),
        );

        _isLoading = false;
      },
    );
  }

  Future<void> refresh() async {
    if (isClosed) return;

    _isLoading = false;
    _offset = 0;
    _items.clear();
    _hasMore = true;

    emit(const ReagentState.loading());
    await _load();
  }
}
