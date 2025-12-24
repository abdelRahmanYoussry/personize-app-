import 'dart:convert';
import 'package:test_your_personalize_app/core/cache/cache_helper.dart';
import 'package:test_your_personalize_app/modules/app/quiz/models/personality_model.dart';

class HistoryRepo {
  final CacheHelper _cacheHelper;
  static const String _historyKey = 'quiz_history';

  HistoryRepo(this._cacheHelper);

  Future<void> saveResult(PersonalityModel result, String userName) async {
    List<String> history =
        _cacheHelper.getData(key: _historyKey)?.cast<String>() ?? [];

    final entry = {
      'modelId': result.id,
      'userName': userName,
      'timestamp': DateTime.now().toIso8601String(),
    };

    history.insert(0, jsonEncode(entry));
    if (history.length > 10) {
      history = history.sublist(0, 10);
    }

    await _cacheHelper.saveData(key: _historyKey, value: history);
  }

  List<Map<String, dynamic>> getHistory() {
    List<String> history =
        _cacheHelper.getData(key: _historyKey)?.cast<String>() ?? [];
    return history.map((e) => jsonDecode(e) as Map<String, dynamic>).toList();
  }
}
