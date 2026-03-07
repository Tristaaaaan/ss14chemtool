import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ss14chemtool/features/recipe/data/model/ingredient_model.dart';
import 'package:ss14chemtool/features/recipe/data/model/recipe_result_model.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/recipe.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
abstract class Recipe with _$Recipe {
  const Recipe._(); // private constructor for methods

  const factory Recipe({
    required String method,
    @Default([]) List<Ingredient> ingredients,
    @Default([]) List<RecipeResult> results,
  }) = _Recipe;

  /// JSON → Recipe
  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  /// Map to domain/entity
  RecipeEntity toEntity() => RecipeEntity(
    method: method,
    ingredients: ingredients
        .map((ingredient) => ingredient.toEntity())
        .toList(),
    results: results.map((result) => result.toEntity()).toList(),
  );

  /// Create Recipe from domain/entity
  factory Recipe.fromEntity(RecipeEntity entity) => Recipe(
    method: entity.method,
    ingredients: entity.ingredients
        .map((ingredient) => Ingredient.fromEntity(ingredient))
        .toList(),
    results: entity.results
        .map((result) => RecipeResult.fromEntity(result))
        .toList(),
  );
}
