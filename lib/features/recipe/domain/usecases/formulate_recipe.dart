import '../../../../core/error/failure.dart';
import '../../../../core/error/fp.dart' show TaskEither;
import '../../../../core/usecases/usecase.dart';
import '../entities/recipe_requirements.dart';
import '../repositories/recipe_repository.dart';

class FormulateRecipe
    implements UseCase<List<RequirementEntity>, FormulateRecipeParams> {
  final RecipeRepository recipeRepository;

  FormulateRecipe(this.recipeRepository);

  @override
  TaskEither<Failure, List<RequirementEntity>> call(
    FormulateRecipeParams params,
  ) => recipeRepository.formulateRecipe(params);
}
