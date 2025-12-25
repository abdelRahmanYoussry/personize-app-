import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_your_personalize_app/core/utils/generic_state.dart';
import 'package:test_your_personalize_app/modules/app/quiz/models/personality_model.dart';
import 'package:test_your_personalize_app/modules/app/history/repo/history_repo.dart';

class ResultCubit extends Cubit<GenericState<void>> {
  final HistoryRepo _historyRepo;

  ResultCubit(this._historyRepo) : super(const InitialState());

  Future<void> saveResult(PersonalityModel result, String userName) async {
    emit(const LoadingState());
    try {
      await _historyRepo.saveResult(result, userName);
      emit(const SuccessState(null));
    } catch (e) {
      emit(FailureState(e.toString()));
    }
  }
}
