import 'package:equatable/equatable.dart';

import 'recipe.dart';

class ReagentEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final RecipeEntity? recipe;

  const ReagentEntity({
    required this.id,
    required this.name,
    required this.description,
    this.recipe,
  });

  @override
  List<Object?> get props => [id, name, description, recipe];
}
