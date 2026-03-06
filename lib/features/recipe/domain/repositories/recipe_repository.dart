import '../../../../core/error/fp.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/recipe.dart';

abstract class RecipeRepository {
  TaskEither<Failure, RecipeEntity> getRecipe(GetRecipeParams params);
}
