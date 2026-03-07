import 'package:equatable/equatable.dart';

class BufferEntity extends Equatable {
  final String id;
  final double amount;

  const BufferEntity({required this.id, required this.amount});

  @override
  List<Object?> get props => [id.toLowerCase(), amount];
}
