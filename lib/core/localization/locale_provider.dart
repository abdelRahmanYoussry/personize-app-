import 'package:flutter/material.dart';
import 'package:test_your_personalize_app/core/cache/cache_helper.dart';

class LocaleProvider extends ChangeNotifier {
  final CacheHelper _cacheHelper;
  static const String _localeKey = 'app_locale';

  Locale _locale = const Locale('en');

  LocaleProvider(this._cacheHelper) {
    _loadLocale();
  }

  Locale get locale => _locale;

  void _loadLocale() {
    final savedLocale = _cacheHelper.getData(key: _localeKey);
    if (savedLocale != null) {
      _locale = Locale(savedLocale.toString());
      notifyListeners();
    }
  }

  Future<void> setLocale(Locale locale) async {
    if (_locale == locale) return;

    _locale = locale;
    await _cacheHelper.saveData(key: _localeKey, value: locale.languageCode);
    notifyListeners();
  }

  Future<void> toggleLocale() async {
    final newLocale = _locale.languageCode == 'en'
        ? const Locale('ar')
        : const Locale('en');
    await setLocale(newLocale);
  }

  bool get isArabic => _locale.languageCode == 'ar';
  bool get isEnglish => _locale.languageCode == 'en';
}

