import 'package:equatable/equatable.dart';

class QuizAnswer extends Equatable {
  final String text;
  final String textArabic;
  final Map<String, int> scores;

  const QuizAnswer({
    required this.text,
    required this.textArabic,
    required this.scores,
  });

  @override
  List<Object?> get props => [text, scores];
}

class QuizQuestion extends Equatable {
  final int id;
  final String question;
  final String questionArabic;
  final List<QuizAnswer> answers;

  const QuizQuestion({
    required this.id,
    required this.question,
    required this.questionArabic,
    required this.answers,
  });

  @override
  List<Object?> get props => [id, question, answers];
}
