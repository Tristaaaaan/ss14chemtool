import 'package:ss14chemtool/features/recipe/domain/entities/reagent.dart';

import '../../../../core/error/fp.dart';
import '../../../../core/usecases/usecase.dart';

abstract class ReagentRepository {
  TaskEither<Failure, List<ReagentEntity>> getReagents(GetReagentParams params);
  TaskEither<Failure, ReagentEntity> getReagentById(String id);
}
