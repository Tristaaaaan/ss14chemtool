import 'package:fpdart/fpdart.dart';
import 'package:ss14chemtool/core/error/failure.dart';
import 'package:ss14chemtool/core/usecases/usecase.dart';
import 'package:ss14chemtool/features/buffers/domain/entities/buffer.dart';

import '../repositories/buffer_repository.dart';

class GetBuffers implements UseCase<List<BufferEntity>, NoParams> {
  final BufferRepository bufferRepository;

  GetBuffers(this.bufferRepository);

  @override
  TaskEither<Failure, List<BufferEntity>> call(NoParams params) =>
      bufferRepository.getBuffers();
}
