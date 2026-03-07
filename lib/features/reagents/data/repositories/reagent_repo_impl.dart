import 'package:ss14chemtool/core/error/fp.dart';
import 'package:ss14chemtool/core/usecases/usecase.dart';
import 'package:ss14chemtool/features/reagents/data/datasource/local/reagent_local_datasource.dart';
import 'package:ss14chemtool/features/reagents/domain/repositories/reagent_repository.dart';
import 'package:ss14chemtool/features/recipe/domain/entities/reagent.dart';

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
}
