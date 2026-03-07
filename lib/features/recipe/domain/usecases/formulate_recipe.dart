import 'package:ss14chemtool/core/error/fp.dart' show TaskEither;
import 'package:ss14chemtool/core/usecases/usecase.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/recipe_requirements.dart';

import '../../../../core/error/failure.dart';
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
