import '../../../../core/error/fp.dart';
import '../entities/buffer.dart';

abstract class BufferRepository {
  TaskEither<Failure, List<BufferEntity>> getBuffers();
}
