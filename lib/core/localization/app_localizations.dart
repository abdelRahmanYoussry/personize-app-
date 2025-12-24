import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      // App Title
      'appTitle': 'Personality Quiz',
      'appSubtitle': 'Discover Your True Self',

      // Bottom Navigation
      'home': 'Home',
      'profile': 'Profile',
      'knowYourself': 'Know Yourself',
      'knowYourselfAr': 'اعرف نفسك',

      // Home Page
      'discoverYour': 'Discover Your',
      'personality': 'Personality',
      'homeDescription': 'Take our fun quiz and discover which personality type matches you best!',
      'readyToStart': 'Ready to Start?',
      'funQuestions': 'Fun Questions',
      'funQuestionsDesc': 'Answer engaging questions',
      'instantResults': 'Instant Results',
      'instantResultsDesc': 'Get your personality type immediately',
      'saveHistory': 'Save History',
      'saveHistoryDesc': 'Track your results over time',
      'startQuiz': 'Start Quiz',

      // Profile Page
      'guestUser': 'Guest User',
      'personalityExplorer': 'Personality Explorer',
      'editProfile': 'Edit Profile',
      'yourName': 'Your Name',
      'enterYourName': 'Enter your name',
      'saveName': 'Save Name',
      'nameSavedSuccess': 'Name saved successfully!',
      'recentResults': 'Recent Results',
      'last10': 'Last 10',
      'noResultsYet': 'No results yet',
      'takeQuizFirst': 'Take the quiz to see your first result!',
      'today': 'Today',
      'yesterday': 'Yesterday',
      'daysAgo': 'days ago',
      'language': 'Language',
      'changeLanguage': 'Change Language',
      'arabic': 'Arabic',
      'english': 'English',
      'currentLanguage': 'Current Language',

      // Know Yourself Page
      'exploreTypes': 'Explore all personality types and their unique traits',
      'allPersonalityTypes': 'All Personality Types',
      'allPersonalityTypesAr': 'جميع أنواع الشخصيات',

      // Quiz Page
      'personalityQuiz': 'Personality Quiz',
      'questionOf': 'Question {current} of {total}',

      // Result Page
      'yourPersonality': 'Your Personality',
      'keyTraits': 'Key Traits',
      'keyTraitsAr': 'الصفات الرئيسية',
      'famousCharacters': 'Famous Characters',
      'shareResult': 'Share Result',
      'backToHome': 'Back to Home',
      'congratulations': 'Congratulations!',

      // Personality Types
      'comedian': 'The Cheerful Comedian',
      'comedianAr': 'الكوميدي المرح',
      'comedianDesc': 'You bring joy and laughter wherever you go! Your sense of humor is infectious, and you have a natural talent for making people smile even in difficult situations.',
      'comedianDescAr': 'أنت تجلب البهجة والضحك أينما ذهبت! حس الفكاهة لديك معدي، ولديك موهبة طبيعية في إسعاد الناس حتى في الأوقات الصعبة.',

      'romantic': 'The Romantic Dreamer',
      'romanticAr': 'الرومانسي الحالم',
      'romanticDesc': 'You see the world through rose-colored glasses. Love, beauty, and emotions guide your decisions, and you believe in fairy tale endings.',
      'romanticDescAr': 'أنت ترى العالم من خلال نظارة وردية. الحب والجمال والعواطف توجه قراراتك، وتؤمن بالنهايات السعيدة.',

      'adventurer': 'The Bold Adventurer',
      'adventurerAr': 'المغامر الجريء',
      'adventurerDesc': 'You live for excitement and new experiences! Taking risks doesn\'t scare you - it energizes you. You\'re always ready for the next adventure.',
      'adventurerDescAr': 'أنت تعيش من أجل الإثارة والتجارب الجديدة! المخاطرة لا تخيفك - بل تمنحك الطاقة. أنت دائماً مستعد للمغامرة القادمة.',

      'wise': 'The Wise Philosopher',
      'wiseAr': 'الفيلسوف الحكيم',
      'wiseDesc': 'You think deeply about life and its meaning. People come to you for advice because you have a calm, thoughtful approach to every situation.',
      'wiseDescAr': 'أنت تفكر بعمق في الحياة ومعناها. الناس يأتون إليك طلباً للنصيحة لأن لديك نهج هادئ ومتأني في كل موقف.',

      'social': 'The Social Butterfly',
      'socialAr': 'الاجتماعي المحبوب',
      'socialDesc': 'You\'re the life of every party! You love being around people, making new friends, and creating unforgettable memories with others.',
      'socialDescAr': 'أنت روح كل حفلة! تحب أن تكون محاطاً بالناس، وتكوين صداقات جديدة، وخلق ذكريات لا تُنسى مع الآخرين.',

      'creative': 'The Creative Artist',
      'creativeAr': 'الفنان المبدع',
      'creativeDesc': 'Your imagination knows no bounds! You see beauty and possibilities everywhere, and you express yourself through creativity and art.',
      'creativeDescAr': 'خيالك لا حدود له! ترى الجمال والإمكانيات في كل مكان، وتعبر عن نفسك من خلال الإبداع والفن.',

      // Common
      'close': 'Close',
      'cancel': 'Cancel',
      'ok': 'OK',
      'save': 'Save',
      'delete': 'Delete',
      'edit': 'Edit',
      'view': 'View',
      'share': 'Share',
    },
    'ar': {
      // App Title
      'appTitle': 'اختبار الشخصية',
      'appSubtitle': 'اكتشف ذاتك الحقيقية',

      // Bottom Navigation
      'home': 'الرئيسية',
      'profile': 'الملف الشخصي',
      'knowYourself': 'اعرف نفسك',
      'knowYourselfAr': 'Know Yourself',

      // Home Page
      'discoverYour': 'اكتشف',
      'personality': 'شخصيتك',
      'homeDescription': 'خذ اختبارنا الممتع واكتشف نوع الشخصية الذي يناسبك!',
      'readyToStart': 'هل أنت مستعد للبدء؟',
      'funQuestions': 'أسئلة ممتعة',
      'funQuestionsDesc': 'أجب عن أسئلة شيقة',
      'instantResults': 'نتائج فورية',
      'instantResultsDesc': 'احصل على نوع شخصيتك فوراً',
      'saveHistory': 'حفظ السجل',
      'saveHistoryDesc': 'تتبع نتائجك عبر الزمن',
      'startQuiz': 'ابدأ الاختبار',

      // Profile Page
      'guestUser': 'مستخدم ضيف',
      'personalityExplorer': 'مستكشف الشخصيات',
      'editProfile': 'تعديل الملف الشخصي',
      'yourName': 'اسمك',
      'enterYourName': 'أدخل اسمك',
      'saveName': 'حفظ الاسم',
      'nameSavedSuccess': 'تم حفظ الاسم بنجاح!',
      'recentResults': 'النتائج الأخيرة',
      'last10': 'آخر 10',
      'noResultsYet': 'لا توجد نتائج بعد',
      'takeQuizFirst': 'خذ الاختبار لترى أول نتيجة!',
      'today': 'اليوم',
      'yesterday': 'أمس',
      'daysAgo': 'أيام مضت',
      'language': 'اللغة',
      'changeLanguage': 'تغيير اللغة',
      'arabic': 'العربية',
      'english': 'الإنجليزية',
      'currentLanguage': 'اللغة الحالية',

      // Know Yourself Page
      'exploreTypes': 'استكشف جميع أنواع الشخصيات وصفاتها الفريدة',
      'allPersonalityTypes': 'جميع أنواع الشخصيات',
      'allPersonalityTypesAr': 'All Personality Types',

      // Quiz Page
      'personalityQuiz': 'اختبار الشخصية',
      'questionOf': 'السؤال {current} من {total}',

      // Result Page
      'yourPersonality': 'شخصيتك',
      'keyTraits': 'الصفات الرئيسية',
      'keyTraitsAr': 'Key Traits',
      'famousCharacters': 'شخصيات مشهورة',
      'shareResult': 'مشاركة النتيجة',
      'backToHome': 'العودة للرئيسية',
      'congratulations': 'تهانينا!',

      // Personality Types
      'comedian': 'الكوميدي المرح',
      'comedianAr': 'The Cheerful Comedian',
      'comedianDesc': 'أنت تجلب البهجة والضحك أينما ذهبت! حس الفكاهة لديك معدي، ولديك موهبة طبيعية في إسعاد الناس حتى في الأوقات الصعبة.',
      'comedianDescAr': 'You bring joy and laughter wherever you go! Your sense of humor is infectious, and you have a natural talent for making people smile even in difficult situations.',

      'romantic': 'الرومانسي الحالم',
      'romanticAr': 'The Romantic Dreamer',
      'romanticDesc': 'أنت ترى العالم من خلال نظارة وردية. الحب والجمال والعواطف توجه قراراتك، وتؤمن بالنهايات السعيدة.',
      'romanticDescAr': 'You see the world through rose-colored glasses. Love, beauty, and emotions guide your decisions, and you believe in fairy tale endings.',

      'adventurer': 'المغامر الجريء',
      'adventurerAr': 'The Bold Adventurer',
      'adventurerDesc': 'أنت تعيش من أجل الإثارة والتجارب الجديدة! المخاطرة لا تخيفك - بل تمنحك الطاقة. أنت دائماً مستعد للمغامرة القادمة.',
      'adventurerDescAr': 'You live for excitement and new experiences! Taking risks doesn\'t scare you - it energizes you. You\'re always ready for the next adventure.',

      'wise': 'الفيلسوف الحكيم',
      'wiseAr': 'The Wise Philosopher',
      'wiseDesc': 'أنت تفكر بعمق في الحياة ومعناها. الناس يأتون إليك طلباً للنصيحة لأن لديك نهج هادئ ومتأني في كل موقف.',
      'wiseDescAr': 'You think deeply about life and its meaning. People come to you for advice because you have a calm, thoughtful approach to every situation.',

      'social': 'الاجتماعي المحبوب',
      'socialAr': 'The Social Butterfly',
      'socialDesc': 'أنت روح كل حفلة! تحب أن تكون محاطاً بالناس، وتكوين صداقات جديدة، وخلق ذكريات لا تُنسى مع الآخرين.',
      'socialDescAr': 'You\'re the life of every party! You love being around people, making new friends, and creating unforgettable memories with others.',

      'creative': 'الفنان المبدع',
      'creativeAr': 'The Creative Artist',
      'creativeDesc': 'خيالك لا حدود له! ترى الجمال والإمكانيات في كل مكان، وتعبر عن نفسك من خلال الإبداع والفن.',
      'creativeDescAr': 'Your imagination knows no bounds! You see beauty and possibilities everywhere, and you express yourself through creativity and art.',

      // Common
      'close': 'إغلاق',
      'cancel': 'إلغاء',
      'ok': 'موافق',
      'save': 'حفظ',
      'delete': 'حذف',
      'edit': 'تعديل',
      'view': 'عرض',
      'share': 'مشاركة',
    },
  };

  String translate(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }

  String get appTitle => translate('appTitle');
  String get appSubtitle => translate('appSubtitle');

  // Bottom Navigation
  String get home => translate('home');
  String get profile => translate('profile');
  String get knowYourself => translate('knowYourself');
  String get knowYourselfAr => translate('knowYourselfAr');

  // Home Page
  String get discoverYour => translate('discoverYour');
  String get personality => translate('personality');
  String get homeDescription => translate('homeDescription');
  String get readyToStart => translate('readyToStart');
  String get funQuestions => translate('funQuestions');
  String get funQuestionsDesc => translate('funQuestionsDesc');
  String get instantResults => translate('instantResults');
  String get instantResultsDesc => translate('instantResultsDesc');
  String get saveHistory => translate('saveHistory');
  String get saveHistoryDesc => translate('saveHistoryDesc');
  String get startQuiz => translate('startQuiz');

  // Profile Page
  String get guestUser => translate('guestUser');
  String get personalityExplorer => translate('personalityExplorer');
  String get editProfile => translate('editProfile');
  String get yourName => translate('yourName');
  String get enterYourName => translate('enterYourName');
  String get saveName => translate('saveName');
  String get nameSavedSuccess => translate('nameSavedSuccess');
  String get recentResults => translate('recentResults');
  String get last10 => translate('last10');
  String get noResultsYet => translate('noResultsYet');
  String get takeQuizFirst => translate('takeQuizFirst');
  String get today => translate('today');
  String get yesterday => translate('yesterday');
  String get daysAgo => translate('daysAgo');
  String get language => translate('language');
  String get changeLanguage => translate('changeLanguage');
  String get arabic => translate('arabic');
  String get english => translate('english');
  String get currentLanguage => translate('currentLanguage');

  // Know Yourself Page
  String get exploreTypes => translate('exploreTypes');
  String get allPersonalityTypes => translate('allPersonalityTypes');
  String get allPersonalityTypesAr => translate('allPersonalityTypesAr');

  // Quiz Page
  String get personalityQuiz => translate('personalityQuiz');
  String questionOf(int current, int total) {
    return translate('questionOf')
        .replaceAll('{current}', current.toString())
        .replaceAll('{total}', total.toString());
  }

  // Result Page
  String get yourPersonality => translate('yourPersonality');
  String get keyTraits => translate('keyTraits');
  String get keyTraitsAr => translate('keyTraitsAr');
  String get famousCharacters => translate('famousCharacters');
  String get shareResult => translate('shareResult');
  String get backToHome => translate('backToHome');
  String get congratulations => translate('congratulations');

  // Common
  String get close => translate('close');
  String get cancel => translate('cancel');
  String get ok => translate('ok');
  String get save => translate('save');
  String get delete => translate('delete');
  String get edit => translate('edit');
  String get view => translate('view');
  String get share => translate('share');
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

