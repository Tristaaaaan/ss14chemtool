import 'package:equatable/equatable.dart';

import '../error/fp.dart';

abstract class UseCase<T, Params> {
  TaskEither<Failure, T> call(Params params);
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => [];
}

class GetRecipeParams extends Equatable {
  final double unit;
  final String reagentId;

  const GetRecipeParams({required this.unit, required this.reagentId});

  @override
  List<Object?> get props => [unit, reagentId];
}

class GetReagentParams extends Equatable {
  final int offset;
  final String? searchQuery;

  const GetReagentParams({required this.offset, this.searchQuery});

  @override
  List<Object?> get props => [offset, searchQuery];
}
