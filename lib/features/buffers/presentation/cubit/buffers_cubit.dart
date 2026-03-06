import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ss14chemtool/features/buffers/domain/usecases/get_buffers.dart';

import '../../../../core/usecases/usecase.dart';
import 'buffers_state.dart';

class BuffersCubit extends Cubit<BuffersState> {
  final GetBuffers getBuffersUseCase;

  BuffersCubit({required this.getBuffersUseCase})
    : super(const BuffersState.initial()) {
    fetchBuffers();
  }

  /// Fetch all check-ins
  Future<void> fetchBuffers() async {
    if (isClosed) return;

    emit(const BuffersState.loading());

    final either = await getBuffersUseCase(NoParams()).run();

    if (isClosed) return;

    either.fold(
      (f) => emit(BuffersState.error(f.message ?? f.toString())),
      (items) => emit(
        items.isEmpty ? const BuffersState.empty() : BuffersState.loaded(items),
      ),
    );
  }

  /// Refresh list
  Future<void> refresh() async => fetchBuffers();
}
