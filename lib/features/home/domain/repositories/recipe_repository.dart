import 'package:ss14chemtool/core/error/fp.dart';
import 'package:ss14chemtool/core/usecases/usecase.dart';
import 'package:ss14chemtool/features/home/domain/entities/recipe.dart';

abstract class RecipeRepository {
  TaskEither<Failure, RecipeEntity> getRecipe(GetRecipeParams params);
}
