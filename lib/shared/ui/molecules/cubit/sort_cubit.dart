import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/enum/sort.dart';
import 'sort_state.dart';

class SortCubit extends Cubit<SortState> {
  SortCubit() : super(const SortState());

  void changeSort(SortOption option) {
    if (state.sortOption == option) return;
    emit(state.copyWith(sortOption: option));
  }

  void reset() {
    emit(const SortState());
  }
}
