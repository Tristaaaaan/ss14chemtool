import '../../../../core/error/fp.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/recipe.dart';
import '../repositories/recipe_repository.dart';

class GetRecipe implements UseCase<RecipeEntity, GetRecipeParams> {
  final RecipeRepository recipeRepository;

  GetRecipe(this.recipeRepository);

  @override
  TaskEither<Failure, RecipeEntity> call(GetRecipeParams params) =>
      recipeRepository.getRecipe(params);
}
