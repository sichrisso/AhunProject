part of 'gitSearchBloc.dart';

abstract class gitSearchEvents extends Equatable{
  const gitSearchEvents();
}

class search extends gitSearchEvents {
  final String username;
  const search(this.username);

  @override
  List<Object> get props => [username];
}

