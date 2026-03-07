import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/recipe_requirements.dart';

part 'recipe_req_model.freezed.dart';
part 'recipe_req_model.g.dart';

/// Freezed model for recipe ingredient requirements
@freezed
abstract class RecipeRequirements with _$RecipeRequirements {
  const RecipeRequirements._(); // private constructor for methods

  const factory RecipeRequirements({
    required String id,
    required double amount,
  }) = _RecipeRequirements;

  /// JSON → RecipeRequirements
  factory RecipeRequirements.fromJson(Map<String, dynamic> json) =>
      _$RecipeRequirementsFromJson(json);

  /// Freezed model → Domain entity
  RequirementEntity toEntity() => RequirementEntity(id: id, amount: amount);

  /// Domain entity → Freezed model
  factory RecipeRequirements.fromEntity(RequirementEntity entity) =>
      RecipeRequirements(id: entity.id, amount: entity.amount);
}
