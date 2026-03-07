import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/reagent.dart';
import 'recipe_model.dart';

part 'reagent_model.freezed.dart';
part 'reagent_model.g.dart';

@freezed
abstract class Reagent with _$Reagent {
  const Reagent._(); // private constructor for methods

  const factory Reagent({
    required String id,
    required String name,
    String? description,
    Recipe? recipe,
  }) = _Reagent;

  factory Reagent.fromJson(Map<String, dynamic> json) =>
      _$ReagentFromJson(json);

  /// Map this data model to the domain/entity
  ReagentEntity toEntity() => ReagentEntity(
    id: id,
    name: name,
    description: description ?? '',
    recipe: recipe?.toEntity(),
  );

  /// Create a data model from the domain/entity
  factory Reagent.fromEntity(ReagentEntity entity) => Reagent(
    id: entity.id,
    name: entity.name,
    description: entity.description,
    recipe: entity.recipe != null ? Recipe.fromEntity(entity.recipe!) : null,
  );
}
