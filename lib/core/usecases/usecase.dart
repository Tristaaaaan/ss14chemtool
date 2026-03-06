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

class GetCheckOutsParams extends Equatable {
  final int offset;
  final String? searchQuery;
  final bool? active;
  final bool? finished;

  const GetCheckOutsParams({
    required this.offset,
    this.searchQuery,
    this.active,
    this.finished,
  });

  @override
  List<Object?> get props => [offset, searchQuery, active, finished];
}

class GetNotificationParams extends Equatable {
  final int offset;
  final String? searchQuery;

  const GetNotificationParams({required this.offset, this.searchQuery});

  @override
  List<Object?> get props => [offset, searchQuery];
}
