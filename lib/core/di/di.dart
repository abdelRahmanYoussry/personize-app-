import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_your_personalize_app/core/cache/cache_helper.dart';
import 'package:test_your_personalize_app/core/localization/locale_cubit.dart';
import 'package:test_your_personalize_app/modules/app/history/repo/history_repo.dart';
import 'package:test_your_personalize_app/modules/app/quiz/bloc/quiz_bloc.dart';
import 'package:test_your_personalize_app/modules/app/result/bloc/result_bloc.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  // External
  final prefs = await SharedPreferences.getInstance();

  // Core
  di.registerSingleton<CacheHelper>(CacheHelper(prefs));
  di.registerSingleton<LocaleCubit>(LocaleCubit(di()));

  // Repos
  di.registerSingleton<HistoryRepo>(HistoryRepo(di()));

  // Blocs
  di.registerFactory<QuizBloc>(() => QuizBloc());
  di.registerFactory<ResultBloc>(() => ResultBloc(di()));
}
