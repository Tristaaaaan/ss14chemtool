import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ss14chemtool/features/buffers/data/models/buffer.dart';
import 'package:ss14chemtool/features/buffers/domain/entities/buffer.dart';

part 'buffers_state.freezed.dart';

@freezed
class BuffersState with _$BuffersState {
  const factory BuffersState.initial() = _Initial;
  const factory BuffersState.loading() = _Loading;
  const factory BuffersState.loaded(List<BufferEntity>? items) = _Loaded;
  const factory BuffersState.error(String message) = _Error;
  const factory BuffersState.empty() = _Empty;
}
