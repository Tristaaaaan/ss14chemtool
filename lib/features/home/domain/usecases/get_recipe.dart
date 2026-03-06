import 'package:ss14chemtool/core/error/fp.dart';
import 'package:ss14chemtool/features/home/domain/entities/recipe.dart';
import 'package:ss14chemtool/features/home/domain/repositories/recipe_repository.dart';

import '../../../../core/usecases/usecase.dart';

class GetRecipe implements UseCase<RecipeEntity, GetRecipeParams> {
  final RecipeRepository recipeRepository;

  GetRecipe(this.recipeRepository);

  @override
  TaskEither<Failure, RecipeEntity> call(GetRecipeParams params) =>
      recipeRepository.getRecipe(params);
}
