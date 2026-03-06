import 'package:equatable/equatable.dart';

class IngredientEntity extends Equatable {
  final String id;
  final int amount;
  final bool catalyst;

  const IngredientEntity({
    required this.id,
    required this.amount,
    this.catalyst = false,
  });

  @override
  List<Object?> get props => [id, amount, catalyst];
}
