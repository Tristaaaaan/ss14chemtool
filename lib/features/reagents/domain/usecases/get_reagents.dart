import 'package:ss14chemtool/features/recipe/domain/entities/reagent.dart';

import '../../../../core/error/fp.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/reagent_repository.dart';

class GetReagent implements UseCase<List<ReagentEntity>, GetReagentParams> {
  final ReagentRepository reagentRepository;

  GetReagent(this.reagentRepository);

  @override
  TaskEither<Failure, List<ReagentEntity>> call(GetReagentParams params) =>
      reagentRepository.getReagents(params);
}
