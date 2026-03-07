import 'package:equatable/equatable.dart';

class RequirementEntity extends Equatable {
  final String id;
  final double amount;

  const RequirementEntity({required this.id, required this.amount});

  @override
  List<Object?> get props => [id, amount];
}
