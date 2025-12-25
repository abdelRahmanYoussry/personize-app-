import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_your_personalize_app/core/navigation/nav.dart';
import 'package:test_your_personalize_app/core/theme/app_colors.dart';
import 'package:test_your_personalize_app/core/utils/static_data.dart';
import 'package:test_your_personalize_app/modules/app/quiz/bloc/quiz_bloc.dart';
import 'package:test_your_personalize_app/modules/app/quiz/models/question_model.dart';
import 'package:test_your_personalize_app/core/localization/app_localizations.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final List<IconData> quizIcons = [
    Icons.question_mark,
    Icons.lightbulb_outline,
    Icons.emoji_emotions,
    Icons.favorite_outline,
    Icons.explore,
    Icons.psychology,
    Icons.star_outline,
    Icons.casino,
    Icons.palette_outlined,
    Icons.rocket_launch_outlined,
  ];

  @override
  void initState() {
    super.initState();
    context.read<QuizCubit>().startQuiz();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final isArabic = Localizations.localeOf(context).languageCode == 'ar';
    return BlocListener<QuizCubit, QuizState>(
      listener: (context, state) {
        if (state is QuizSuccessState) {
          Nav.result.pushReplacement(context, args: state.result);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.close, color: AppColors.textPrimary),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(localizations.translate('personalityQuiz')),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: AppColors.backgroundGradient,
          ),
          child: SafeArea(
            child: BlocBuilder<QuizCubit, QuizState>(
              builder: (context, state) {
                if (state.totalQuestions == 0) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.currentIndex >= StaticData.quizQuestions.length) {
                  return const Center(child: CircularProgressIndicator());
                }
                final question = StaticData.quizQuestions[state.currentIndex];
                final progress = (state.currentIndex + 1) / state.totalQuestions;
                return Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      // Header: Progress
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              gradient: AppColors.primaryGradient,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              localizations.translate('questionOf')
                                .replaceFirst('{current}', (state.currentIndex + 1).toString())
                                .replaceFirst('{total}', state.totalQuestions.toString()),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: progress,
                          backgroundColor: AppColors.cardBorder,
                          valueColor: const AlwaysStoppedAnimation(
                            AppColors.primary,
                          ),
                          minHeight: 8,
                        ),
                      ),
                      const SizedBox(height: 32),
                      // Question Card
                      _buildQuestionCard(context, question, state.currentIndex, isArabic),
                      const SizedBox(height: 32),
                      // Answers
                      Expanded(
                        child: ListView(
                          children: question.answers
                              .map(
                                (answer) => _buildAnswerButton(context, answer, isArabic),
                              )
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionCard(BuildContext context, QuizQuestion question, int index, bool isArabic) {
    final icon = quizIcons[index % quizIcons.length];
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.cardBorder),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withAlpha(26), // 0.1 opacity
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: AppColors.primaryGradient,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 32,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            isArabic ? question.questionArabic : question.question,
            textAlign: TextAlign.center,
            textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  height: 1.4,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnswerButton(BuildContext context, QuizAnswer answer, bool isArabic) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            context.read<QuizCubit>().answerQuestion(answer.scores);
          },
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.surface,
              border: Border.all(color: AppColors.cardBorder, width: 1.5),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x0D000000), // 0.05 opacity black
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Text(
              isArabic ? answer.textArabic : answer.text,
              textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
