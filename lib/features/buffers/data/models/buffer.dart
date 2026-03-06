import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ss14chemtool/features/buffers/domain/entities/buffer.dart';

part 'buffer.freezed.dart';
part 'buffer.g.dart';

@freezed
abstract class Buffer with _$Buffer {
  const Buffer._();

  const factory Buffer({required String id, required double amount}) = _Buffer;

  factory Buffer.fromJson(Map<String, dynamic> json) => _$BufferFromJson(json);

  factory Buffer.fromMap(Map<String, dynamic> map) {
    return Buffer(
      id: map['id'] as String? ?? '',
      amount: (map['amount'] as num?)?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'amount': amount};
  }

  BufferEntity toEntity() => BufferEntity(id: id, amount: amount);

  factory Buffer.fromEntity(BufferEntity entity) =>
      Buffer(id: entity.id, amount: entity.amount);
}
