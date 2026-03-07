import 'package:freezed_annotation/freezed_annotation.dart';

part 'actions_state.freezed.dart';

@freezed
class ActionState with _$ActionState {
  const factory ActionState.showRecipe() = _showRecipe;
  const factory ActionState.showReagents() = _showReagents;
}
