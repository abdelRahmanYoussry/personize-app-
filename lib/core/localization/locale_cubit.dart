import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:test_your_personalize_app/core/cache/cache_helper.dart';

class LocaleCubit extends Cubit<Locale> {
  final CacheHelper _cacheHelper;
  static const String _localeKey = 'app_locale';

  LocaleCubit(this._cacheHelper) : super(const Locale('ar')) {
    _loadLocale();
  }

  void _loadLocale() {
    final savedLocale = _cacheHelper.getData(key: _localeKey);
    if (savedLocale != null) {
      emit(Locale(savedLocale.toString()));
    }
  }

  Future<void> setLocale(Locale locale) async {
    if (state == locale) return;

    await _cacheHelper.saveData(key: _localeKey, value: locale.languageCode);
    emit(locale);
  }

  Future<void> toggleLocale() async {
    final newLocale = state.languageCode == 'en'
        ? const Locale('ar')
        : const Locale('en');
    await setLocale(newLocale);
  }

  bool get isArabic => state.languageCode == 'ar';
  bool get isEnglish => state.languageCode == 'en';
}

