import 'package:flutter_bloc/flutter_bloc.dart';

import 'actions_state.dart';

class ActionCubit extends Cubit<ActionState> {
  ActionCubit() : super(const ActionState.showReagents());

  void showRecipe() => emit(const ActionState.showRecipe());
  void showReagents() => emit(const ActionState.showReagents());
}
