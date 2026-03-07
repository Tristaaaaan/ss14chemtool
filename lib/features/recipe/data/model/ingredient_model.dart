import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/ingredient.dart';

part 'ingredient_model.freezed.dart';
part 'ingredient_model.g.dart';

@freezed
abstract class Ingredient with _$Ingredient {
  const Ingredient._(); // private constructor for methods

  const factory Ingredient({
    required String id,
    required int amount,
    @Default(false) bool catalyst,
  }) = _Ingredient;

  /// JSON → Ingredient
  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  /// Convert Freezed model → Entity
  IngredientEntity toEntity() =>
      IngredientEntity(id: id, amount: amount, catalyst: catalyst);

  /// Convert Entity → Freezed model
  factory Ingredient.fromEntity(IngredientEntity entity) => Ingredient(
    id: entity.id,
    amount: entity.amount,
    catalyst: entity.catalyst,
  );
}
