import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_your_personalize_app/core/di/di.dart';
import 'package:test_your_personalize_app/modules/app/history/pages/history_page.dart';
import 'package:test_your_personalize_app/modules/app/quiz/bloc/quiz_bloc.dart';
import 'package:test_your_personalize_app/modules/app/quiz/pages/quiz_page.dart';
import 'package:test_your_personalize_app/modules/app/result/bloc/result_bloc.dart';
import 'package:test_your_personalize_app/modules/app/result/pages/result_page.dart';
import 'package:test_your_personalize_app/modules/app/splash/splash_page.dart';
import 'package:test_your_personalize_app/modules/app/main_screen/main_screen.dart';

enum Nav { splash, mainScreen, quiz, result, history }

extension NavExtension on Nav {
  static final mainNavKey = GlobalKey<NavigatorState>();
  String get name => toString().split('.').last;

  Future<T?> push<T>(BuildContext ctx, {Object? args}) =>
      Navigator.of(ctx).pushNamed(name, arguments: args);

  Future<T?> pushReplacement<T>(BuildContext ctx, {Object? args}) =>
      Navigator.of(ctx).pushReplacementNamed(name, arguments: args);

  Future<T?> pushAndRemoveUntil<T>(BuildContext ctx, {Object? args}) =>
      Navigator.of(
        ctx,
      ).pushNamedAndRemoveUntil(name, (route) => false, arguments: args);

  Widget getWidget(BuildContext ctx) {
    switch (this) {
      case Nav.splash:
        return const SplashPage();
      case Nav.mainScreen:
        return const MainScreen();
      case Nav.quiz:
        return BlocProvider(
          create: (_) => di<QuizBloc>(),
          child: const QuizPage(),
        );
      case Nav.result:
        return BlocProvider(
          create: (_) => di<ResultBloc>(),
          child: const ResultPage(),
        );
      case Nav.history:
        return const HistoryPage();
    }
  }
}
