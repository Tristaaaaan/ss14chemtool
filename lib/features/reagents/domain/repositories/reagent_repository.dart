import '../../../../core/error/fp.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../recipe/domain/entities/reagent.dart';

abstract class ReagentRepository {
  TaskEither<Failure, List<ReagentEntity>> getReagents(GetReagentParams params);
  TaskEither<Failure, ReagentEntity> getReagentById(String id);
}
