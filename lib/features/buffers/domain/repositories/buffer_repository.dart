import 'package:ss14chemtool/features/buffers/domain/entities/buffer.dart';

import '../../../../core/error/fp.dart';

abstract class BufferRepository {
  TaskEither<Failure, List<BufferEntity>> getBuffers();
}
