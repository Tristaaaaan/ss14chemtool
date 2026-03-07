import '../../../../core/error/fp.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../recipe/domain/entities/reagent.dart';
import '../repositories/reagent_repository.dart';

class GetReagent implements UseCase<List<ReagentEntity>, GetReagentParams> {
  final ReagentRepository reagentRepository;

  GetReagent(this.reagentRepository);

  @override
  TaskEither<Failure, List<ReagentEntity>> call(GetReagentParams params) =>
      reagentRepository.getReagents(params);
}

class GetReagentById implements UseCase<ReagentEntity, String> {
  final ReagentRepository reagentRepository;

  GetReagentById(this.reagentRepository);

  @override
  TaskEither<Failure, ReagentEntity> call(String id) =>
      reagentRepository.getReagentById(id);
}
