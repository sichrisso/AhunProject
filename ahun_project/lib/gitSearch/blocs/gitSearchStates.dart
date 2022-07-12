part of 'gitSearchBloc.dart';

abstract class gitSearchState extends Equatable{
  const gitSearchState();

  @override
  List<Object> get props => [];
}

class Idel extends gitSearchState {}

class searchLoading extends gitSearchState {}

class searchSuccess extends gitSearchState {
  final Iterable<GitSearch> searches;

  const searchSuccess([this.searches= const []]);

  @override
  List<Object> get props => [searches];
}

class searchFailed extends gitSearchState {
  final Object error;

  const searchFailed(this.error);
  @override
  List<Object> get props => [error];
}
