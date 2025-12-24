import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_your_personalize_app/core/utils/generic_state.dart';
import 'package:test_your_personalize_app/modules/app/quiz/models/personality_model.dart';
import 'package:test_your_personalize_app/modules/app/history/repo/history_repo.dart';

// Events
abstract class ResultEvent {}

class SaveResult extends ResultEvent {
  final PersonalityModel result;
  final String userName;
  SaveResult(this.result, this.userName);
}

class ResultBloc extends Bloc<ResultEvent, GenericState<void>> {
  final HistoryRepo _historyRepo;

  ResultBloc(this._historyRepo) : super(const InitialState()) {
    on<SaveResult>((event, emit) async {
      emit(const LoadingState());
      try {
        await _historyRepo.saveResult(event.result, event.userName);
        emit(const SuccessState(null));
      } catch (e) {
        emit(FailureState(e.toString()));
      }
    });
  }
}
