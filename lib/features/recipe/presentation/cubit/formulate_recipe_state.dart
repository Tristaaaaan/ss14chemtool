import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/recipe_requirements.dart';

part 'formulate_recipe_state.freezed.dart';

@freezed
class FormulateRecipeState with _$FormulateRecipeState {
  const factory FormulateRecipeState.initial() = _Initial;
  const factory FormulateRecipeState.loading() = _Loading;
  const factory FormulateRecipeState.loaded(List<RequirementEntity>? items) =
      _Loaded;
  const factory FormulateRecipeState.error(String message) = _Error;
  const factory FormulateRecipeState.empty() = _Empty;
}
