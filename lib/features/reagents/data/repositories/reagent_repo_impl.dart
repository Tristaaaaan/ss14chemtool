import '../../../../core/error/fp.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../recipe/domain/entities/reagent.dart';
import '../../domain/repositories/reagent_repository.dart';
import '../datasource/local/reagent_local_datasource.dart';

class ReagentRepoImpl implements ReagentRepository {
  final ReagentLocalDatasource reagentsLocalDatasource;

  ReagentRepoImpl({required this.reagentsLocalDatasource});

  @override
  TaskEither<Failure, List<ReagentEntity>> getReagents(
    GetReagentParams params,
  ) => TaskEither.tryCatch(() async {
    final models = await reagentsLocalDatasource.getReagents(
      params.offset,
      params.searchQuery,
    );
    return models.map((m) => m.toEntity()).toList();
  }, (e, _) => CacheFailure(e.toString()));

  @override
  TaskEither<Failure, ReagentEntity> getReagentById(String id) =>
      TaskEither.tryCatch(() async {
        final model = await reagentsLocalDatasource.getReagentById(id);
        return model!.toEntity();
      }, (e, _) => CacheFailure(e.toString()));
}
