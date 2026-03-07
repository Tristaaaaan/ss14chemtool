import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/reagent.dart';

part 'reagent_state.freezed.dart';

@freezed
class ReagentState with _$ReagentState {
  const factory ReagentState.initial() = _Initial;
  const factory ReagentState.loading() = _Loading;
  const factory ReagentState.loaded(List<ReagentEntity>? items, bool hasMore) =
      _Loaded;
  const factory ReagentState.error(String message) = _Error;
  const factory ReagentState.empty() = _Empty;
}
