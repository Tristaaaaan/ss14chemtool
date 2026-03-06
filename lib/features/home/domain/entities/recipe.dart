import 'package:equatable/equatable.dart';
import 'package:ss14chemtool/features/home/domain/entities/ingredient.dart';
import 'package:ss14chemtool/features/home/domain/entities/result.dart';

class RecipeEntity extends Equatable {
  final String method;
  final IngredientEntity ingredients;
  final RecipeResultEntity results;

  const RecipeEntity({
    required this.method,
    required this.ingredients,
    required this.results,
  });

  @override
  List<Object?> get props => [method, ingredients, results];
}
