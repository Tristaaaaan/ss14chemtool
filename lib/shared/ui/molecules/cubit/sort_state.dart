import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/enum/sort.dart';

part 'sort_state.freezed.dart';

@freezed
abstract class SortState with _$SortState {
  const factory SortState({@Default(SortOption.newest) SortOption sortOption}) =
      _SortState;
}
