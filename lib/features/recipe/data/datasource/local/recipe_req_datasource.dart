import 'dart:developer' as developer;

import '../../../../../core/usecases/usecase.dart';
import '../../model/recipe_req_model.dart';

abstract class RecipeRequirementsLocalDataSource {
  Future<List<RecipeRequirements>> formulateRecipeRequirements(
    FormulateRecipeParams params,
  );
}

class RecipeRequirementsLocalDataSourceImpl
    implements RecipeRequirementsLocalDataSource {
  @override
  Future<List<RecipeRequirements>> formulateRecipeRequirements(
    FormulateRecipeParams params,
  ) async {
    final buffers = params.buffers;
    final requirements = params.requirements;
    final results = params.results;
    final desiredAmount = params.desiredAmount;

    final missingRequirements = <RecipeRequirements>[];

    if (results.isEmpty) {
      // No results in recipe → nothing can be formulated
      return missingRequirements;
    }

    // Assuming the first result is the main product
    final recipeOutputAmount = results.first.amount;

    // Scale factor = how many times we need to multiply the recipe
    final scaleFactor = desiredAmount / recipeOutputAmount;

    // Convert buffers to a map for fast lookup
    final bufferMap = {
      for (var b in buffers) b.id.trim().toLowerCase(): b.amount,
    };

    // Check each required ingredient
    for (var req in requirements) {
      final reqName = req.id.trim().toLowerCase();
      final requiredAmount = req.amount * scaleFactor;
      final currentAmount = bufferMap[reqName] ?? 0.0;

      if (currentAmount < requiredAmount) {
        final missingAmount = requiredAmount - currentAmount;

        missingRequirements.add(
          RecipeRequirements(id: req.id, amount: missingAmount.toDouble()),
        );
      } else {
        // Requirement is already satisfied; no need to add
        developer.log('Requirement met: $reqName');
      }
    }

    return missingRequirements;
  }
}
