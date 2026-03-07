import '../../../../core/error/fp.dart';
import '../../domain/entities/buffer.dart';
import '../../domain/repositories/buffer_repository.dart';
import '../datasource/local/buffers_local_datasource.dart';

class BufferRepositoryImpl implements BufferRepository {
  final BuffersLocalDatasource buffersLocalDatasource;

  BufferRepositoryImpl({required this.buffersLocalDatasource});

  @override
  TaskEither<Failure, List<BufferEntity>> getBuffers() =>
      TaskEither.tryCatch(() async {
        final models = await buffersLocalDatasource.getBuffers();
        return models.map((m) => m.toEntity()).toList();
      }, (e, _) => CacheFailure(e.toString()));
}
