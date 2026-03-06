import 'package:mockito/mockito.dart';
import 'package:ss14chemtool/core/error/fp.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/ingredient.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/recipe.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/result.dart';

void registerMockitoFallbacks() {
  provideDummy<TaskEither<Failure, Unit>>(TaskEither.right(unit));

  provideDummy<TaskEither<Failure, RecipeEntity>>(
    TaskEither<Failure, RecipeEntity>.right(
      RecipeEntity(
        method: '',
        ingredients: IngredientEntity(id: '', amount: 0),
        results: RecipeResultEntity(id: '', amount: 0),
      ),
    ),
  );
}
