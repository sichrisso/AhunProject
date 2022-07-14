import 'package:ahun_project/gitSearch/models/gitsearchModels.dart';
import 'package:ahun_project/gitSearch/repository/gitSearchRepository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'gitSearchEvents.dart';
part 'gitSearchStates.dart';

class GitSearchBloc extends Bloc<GitSearchEvents, GitSearchState> {
  final GitSearchRepository gitSearchRepository;
  GitSearchBloc(this.gitSearchRepository) : super(Idel()) {
    on<search>((event, emit) async {
      emit(searchLoading());
      try {
        final Search =
            await gitSearchRepository.fetchByUsername(event.username);
        print(Search);
        emit(searchSuccess(Search));
      } catch (error) {
        print(error);
        emit(searchFailed(error));
      }
    });
  }
}
