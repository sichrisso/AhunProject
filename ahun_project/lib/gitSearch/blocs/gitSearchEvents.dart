part of 'gitSearchBloc.dart';

abstract class GitSearchEvents {
  const GitSearchEvents();
}

class search extends GitSearchEvents {
  final String username;

  search({required this.username});

  @override
  List<Object> get props => [username];
}
