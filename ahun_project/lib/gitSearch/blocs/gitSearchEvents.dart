part of 'gitSearchBloc.dart';

abstract class GitSearchEvents extends Equatable{
  const GitSearchEvents();
}

class searchLoad extends GitSearchEvents{
   const searchLoad();

  @override
  List<Object> get props => [];
}

class search extends GitSearchEvents {
  final String username;
  const search(this.username);

  @override
  List<Object> get props => [username];
}

