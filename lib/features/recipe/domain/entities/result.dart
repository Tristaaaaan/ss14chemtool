import 'package:equatable/equatable.dart';

class RecipeResultEntity extends Equatable {
  final String id;
  final int amount;

  const RecipeResultEntity({required this.id, required this.amount});

  @override
  List<Object?> get props => [id, amount];
}
