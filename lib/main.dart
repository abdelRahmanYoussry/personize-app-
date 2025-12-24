import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_your_personalize_app/core/di/di.dart';
import 'package:test_your_personalize_app/core/localization/app_localizations.dart';
import 'package:test_your_personalize_app/core/localization/locale_cubit.dart';
import 'package:test_your_personalize_app/core/navigation/nav.dart';
import 'package:test_your_personalize_app/core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set system UI overlay style for status bar
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark, // Dark icons (WiFi, battery, etc.)
      statusBarBrightness: Brightness.light, // For iOS
    ),
  );

  await initDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocaleCubit>(
      create: (_) => di<LocaleCubit>(),
      child: BlocBuilder<LocaleCubit, Locale>(
        builder: (context, locale) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Vibe Coding Personalize',
            theme: AppTheme.lightTheme,
            locale: locale,
            supportedLocales: const [
              Locale('en', ''),
              Locale('ar', ''),
            ],
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            navigatorKey: NavExtension.mainNavKey,
            initialRoute: Nav.splash.name,
            routes: Map.fromEntries(
              Nav.values.map((n) => MapEntry(n.name, (ctx) => n.getWidget(ctx))),
            ),
          );
        },
      ),
    );
  }
}
