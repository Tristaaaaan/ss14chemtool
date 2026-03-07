import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/result.dart';

part 'recipe_result_model.freezed.dart';
part 'recipe_result_model.g.dart';

@freezed
abstract class RecipeResult with _$RecipeResult {
  const RecipeResult._(); // private constructor for methods

  const factory RecipeResult({required String id, required int amount}) =
      _RecipeResult;

  /// JSON → RecipeResult
  factory RecipeResult.fromJson(Map<String, dynamic> json) =>
      _$RecipeResultFromJson(json);

  /// Freezed model → Entity
  RecipeResultEntity toEntity() => RecipeResultEntity(id: id, amount: amount);

  /// Entity → Freezed model
  factory RecipeResult.fromEntity(RecipeResultEntity entity) =>
      RecipeResult(id: entity.id, amount: entity.amount);
}
