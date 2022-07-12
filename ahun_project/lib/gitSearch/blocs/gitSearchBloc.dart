import 'package:ahun_project/gitSearch/models/gitsearchModels.dart';
import 'package:ahun_project/gitSearch/repository/gitSearchRepository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'gitSearchEvents.dart';
part 'gitSearchStates.dart';

class gitSearchBloc extends Bloc<gitSearchEvents, gitSearchState> {
  final GitSearchRepository gitSearchRepository;
  gitSearchBloc({required this.gitSearchRepository}) : super(Idel()) {
    on<search>((event, emit) async {
      emit(searchLoading());
      try {
        final Search = await gitSearchRepository.fetchByUsername(event.username);
        emit(searchSuccess());
      } catch (error) {
        emit(searchFailed(error));
      }
    });
  }
}
