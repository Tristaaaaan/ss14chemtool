import 'package:ss14chemtool/features/recipe/domain/entities/recipe_requirements.dart';

import '../../../../core/error/fp.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/recipe.dart';

abstract class RecipeRepository {
  TaskEither<Failure, RecipeEntity> getRecipe(GetRecipeParams params);

  TaskEither<Failure, List<RequirementEntity>> formulateRecipe(
    FormulateRecipeParams params,
  );
}
