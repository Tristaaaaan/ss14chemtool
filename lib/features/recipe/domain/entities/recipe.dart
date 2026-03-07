import 'package:equatable/equatable.dart';

import 'ingredient.dart';
import 'result.dart';

class RecipeEntity extends Equatable {
  final String method;
  final List<IngredientEntity> ingredients; // must be List
  final List<RecipeResultEntity> results; // must be List

  const RecipeEntity({
    required this.method,
    required this.ingredients,
    required this.results,
  });

  @override
  List<Object?> get props => [method, ingredients, results];
}
