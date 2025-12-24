import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_your_personalize_app/core/utils/generic_state.dart';
import 'package:test_your_personalize_app/modules/app/quiz/models/personality_model.dart';
import 'package:test_your_personalize_app/core/utils/static_data.dart';

// Events
abstract class QuizEvent {}

class StartQuiz extends QuizEvent {}

class AnswerQuestion extends QuizEvent {
  final Map<String, int> scores;
  AnswerQuestion(this.scores);
}

class ResetQuiz extends QuizEvent {}

// State
class QuizState extends GenericState<PersonalityModel> {
  final int currentIndex;
  final int totalQuestions;

  const QuizState({this.currentIndex = 0, this.totalQuestions = 0});
}

class QuizSuccessState extends QuizState {
  final PersonalityModel result;
  const QuizSuccessState(this.result) : super(currentIndex: 0);
}

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final Map<String, int> _scores = {};

  QuizBloc() : super(const QuizState(totalQuestions: 10)) {
    on<StartQuiz>((event, emit) {
      _scores.clear();
      emit(
        QuizState(
          currentIndex: 0,
          totalQuestions: StaticData.quizQuestions.length,
        ),
      );
    });

    on<AnswerQuestion>((event, emit) {
      // Accumulate scores
      event.scores.forEach((key, value) {
        _scores[key] = (_scores[key] ?? 0) + value;
      });

      final current = state.currentIndex;
      final total = StaticData.quizQuestions.length;

      if (current < total - 1) {
        emit(QuizState(currentIndex: current + 1, totalQuestions: total));
      } else {
        // Calculate Winner
        final winnerId = _calculateWinner();
        final result = StaticData.personalityTypes.firstWhere(
          (p) => p.id == winnerId,
          orElse: () => StaticData.personalityTypes.first,
        );
        emit(QuizSuccessState(result));
      }
    });

    on<ResetQuiz>((event, emit) {
      add(StartQuiz());
    });
  }

  String _calculateWinner() {
    if (_scores.isEmpty) return 'comedian';

    var highestScore = -1;
    var winner = '';

    _scores.forEach((key, value) {
      if (value > highestScore) {
        highestScore = value;
        winner = key;
      }
    });

    return winner;
  }
}
