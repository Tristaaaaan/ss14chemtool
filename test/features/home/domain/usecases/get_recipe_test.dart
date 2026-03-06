import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart' as TaskEither;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ss14chemtool/core/error/failure.dart';
import 'package:ss14chemtool/core/usecases/usecase.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/ingredient.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/recipe.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/result.dart';
import 'package:ss14chemtool/features/recipe/domain/repositories/recipe_repository.dart';
import 'package:ss14chemtool/features/recipe/domain/usecases/get_recipe.dart';

import '../../../../helpers/mockito_fallbacks.dart';
@GenerateNiceMocks([MockSpec<RecipeRepository>()])
import 'get_recipe_test.mocks.dart';

void main() {
  registerMockitoFallbacks();

  late GetRecipe usecase;
  late MockRecipeRepository mockRecipeRepository;

  setUp(() {
    mockRecipeRepository = MockRecipeRepository();
    usecase = GetRecipe(mockRecipeRepository);
  });

  const params = GetRecipeParams(reagentId: 'inaprovaline', unit: 90);

  final ingredients = IngredientEntity(id: '', amount: 100);
  final result = RecipeResultEntity(id: '', amount: 100);
  final recipe = RecipeEntity(
    method: 'mix',
    ingredients: ingredients,
    results: result,
  );

  test('should get recipe from the repository', () async {
    // arrange
    when(mockRecipeRepository.getRecipe(params)).thenAnswer(
      (_) => TaskEither.TaskEither<Failure, RecipeEntity>.right(recipe),
    );

    // act
    final either = await usecase(params).run();

    // assert
    either.fold(
      (f) => fail('expected Right, got Left($f)'),
      (result) => expect(result, equals(recipe)),
    );

    verify(mockRecipeRepository.getRecipe(params));
    verifyNoMoreInteractions(mockRecipeRepository);
  });
}
