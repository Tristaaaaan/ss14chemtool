import '../../../../core/error/fp.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/recipe.dart';
import '../entities/recipe_requirements.dart';

abstract class RecipeRepository {
  TaskEither<Failure, RecipeEntity> getRecipe(GetRecipeParams params);

  TaskEither<Failure, List<RequirementEntity>> formulateRecipe(
    FormulateRecipeParams params,
  );
}
