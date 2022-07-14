part of 'gitSearchBloc.dart';

abstract class GitSearchState extends Equatable {
  const GitSearchState();

  @override
  List<Object> get props => [];
}

class Idel extends GitSearchState {}

class searchLoading extends GitSearchState {}

class searchSuccess extends GitSearchState {
  final GitSearch searches;
  const searchSuccess(this.searches);

  // @override
  // List<Object> get props => [searches];
}

class searchFailed extends GitSearchState {
  final Object error;

  const searchFailed(this.error);
  @override
  List<Object> get props => [error];
}
