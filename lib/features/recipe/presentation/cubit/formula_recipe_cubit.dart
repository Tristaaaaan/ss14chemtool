import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ss14chemtool/core/usecases/usecase.dart';
import 'package:ss14chemtool/features/buffers/domain/entities/buffer.dart';
import 'package:ss14chemtool/features/reagents/domain/usecases/get_reagents.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/ingredient.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/result.dart';
import 'package:ss14chemtool/features/recipe/domain/usecases/formulate_recipe.dart';

import '../../../buffers/domain/usecases/get_buffers.dart';
import 'formulate_recipe_state.dart';

class FormulaRecipeCubit extends Cubit<FormulateRecipeState> {
  final GetBuffers getBuffersUseCase;
  final GetReagentById getReagentByIdUseCase;
  final FormulateRecipe formulateRecipeUseCase; // main use case

  FormulaRecipeCubit({
    required this.getBuffersUseCase,
    required this.getReagentByIdUseCase,
    required this.formulateRecipeUseCase,
  }) : super(const FormulateRecipeState.initial());

  Future<void> formulateRecipe({
    required String reagentId,
    required double desiredAmount,
  }) async {
    if (isClosed) return;

    emit(const FormulateRecipeState.loading());

    try {
      // 1️⃣ Fetch buffers
      final buffersEither = await getBuffersUseCase(NoParams()).run();
      if (isClosed) return;

      if (buffersEither.isLeft()) {
        final failure = buffersEither.fold((l) => l, (_) => null)!;
        emit(FormulateRecipeState.error(failure.message ?? failure.toString()));
        return;
      }
      final buffers = buffersEither.fold((_) => <BufferEntity>[], (r) => r);

      // 2️⃣ Fetch reagent
      final reagentEither = await getReagentByIdUseCase(reagentId).run();
      if (isClosed) return;

      if (reagentEither.isLeft()) {
        final failure = reagentEither.fold((l) => l, (_) => null)!;
        emit(FormulateRecipeState.error(failure.message ?? failure.toString()));
        return;
      }
      final reagent = reagentEither.fold((_) => null, (r) => r)!;

      // 3️⃣ Validate recipe exists
      final recipe = reagent.recipe;
      if (recipe == null) {
        emit(FormulateRecipeState.error("Reagent has no recipe"));
        return;
      }

      // 4️⃣ Cast lists to proper types
      final ingredients = recipe.ingredients.cast<IngredientEntity>().toList();
      final results = recipe.results.cast<RecipeResultEntity>().toList();

      // 5️⃣ Build parameters for the main use case
      final params = FormulateRecipeParams(
        buffers: buffers,
        requirements: ingredients,
        results: results,
        desiredAmount: desiredAmount,
      );

      // 6️⃣ Call the main use case
      final recipeEither = await formulateRecipeUseCase(params).run();
      if (isClosed) return;

      recipeEither.fold(
        (failure) => emit(
          FormulateRecipeState.error(failure.message ?? failure.toString()),
        ),
        (requirements) => emit(FormulateRecipeState.loaded(requirements)),
      );
    } catch (e) {
      emit(FormulateRecipeState.error(e.toString()));
    }
  }

  /// Refresh with the same parameters
  Future<void> refresh({
    required String reagentId,
    required double desiredAmount,
  }) async {
    await formulateRecipe(reagentId: reagentId, desiredAmount: desiredAmount);
  }
}
