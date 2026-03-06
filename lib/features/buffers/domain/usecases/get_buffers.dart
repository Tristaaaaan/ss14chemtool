import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/buffer.dart';
import '../repositories/buffer_repository.dart';

class GetBuffers implements UseCase<List<BufferEntity>, NoParams> {
  final BufferRepository bufferRepository;

  GetBuffers(this.bufferRepository);

  @override
  TaskEither<Failure, List<BufferEntity>> call(NoParams params) =>
      bufferRepository.getBuffers();
}
