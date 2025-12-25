import 'package:test_your_personalize_app/modules/app/quiz/models/personality_model.dart';
import 'package:test_your_personalize_app/modules/app/quiz/models/question_model.dart';

class StaticData {
  static const List<PersonalityModel> personalityTypes = [
    PersonalityModel(
      id: 'comedian',
      name: 'The Cheerful Henedy',
      nameArabic: 'الهنيدي الفرفوش',
      description:
          'You are the king of the party! Like Henedy, you know how to turn any tough situation into a laugh. People love your wit and spontaneous humor.',
      descriptionArabic:
          'أنت ملك الضحك والفرفشة! زي هنيدي، بتعرف تقلب أي موقف لضحك وهزار. الناس بتحب قعدتك عشان دمك خفيف وقفشاتك اللي في وقتها.',
      traits: ['Funny', 'Optimistic', 'Spontaneous', 'Witty'],
      traitsArabic: ['دمه خفيف', 'متفائل', 'عفوي', 'صاحب قفشات'],
      movieClipUrl: 'https://www.youtube.com/watch?v=FZEad7fJeYs',
      movieTitle: 'Mohamed Henedy - Comedy King',
      movieTitleArabic: 'محمد هنيدي - ملك الكوميديا',
      emoji: '😂',
    ),
    PersonalityModel(
      id: 'romantic',
      name: 'The Romantic Zaki Chan',
      nameArabic: 'زكي شان الرومانسي',
      description:
          'A soft heart in a tough world. You are deeply sensitive and will do anything for love, even if you sometimes get into trouble like Helmy.',
      descriptionArabic:
          'قلب أبيض ومشاعر فياضة في وسط العالم ده. أنت حساس جداً وممكن تعمل أي حاجة عشان الحب، حتى لو بتلبس في الحيط أحياناً زي حلمي.',
      traits: ['Sensitive', 'Loving', 'Sincere', 'Dreamer'],
      traitsArabic: ['حساس', 'محب', 'مخلص', 'حالم'],
      movieClipUrl: 'https://www.youtube.com/watch?v=Gt_5x4uFFXs',
      movieTitle: 'Ahmed Helmy - Zaki Chan',
      movieTitleArabic: 'أحمد حلمي - زكي شان',
      emoji: '❤️',
    ),
    PersonalityModel(
      id: 'adventurer',
      name: 'The Bold Action Hero',
      nameArabic: 'بطل الأكشن الجريء',
      description:
          'You don\'t fear challenges! You have the spirit of an action hero, always ready for the next move and never looking back.',
      descriptionArabic:
          'مبتهابش ومبتجليش! عندك روح بطل الأكشن، دايماً مستعد للخطوة اللي جاية وعينك في وسط راسك.',
      traits: ['Brave', 'Strong', 'Determined', 'Action-oriented'],
      traitsArabic: ['شجاع', 'قوي', 'مصمم', 'بتاع فعل'],
      movieClipUrl: 'https://www.youtube.com/shorts/NBLfkyg9k20',
      movieTitle: 'Egyptian Action - Bold Spirit',
      movieTitleArabic: 'أكشن مصري - الروح الجريئة',
      emoji: '⚡',
    ),
    PersonalityModel(
      id: 'wise',
      name: 'The Wise Leader',
      nameArabic: 'الزعيم الحكيم',
      description:
          'You have the prestige and wisdom of the Leader. People look up to you because you see what they don\'t, and your words carry weight.',
      descriptionArabic:
          'عندك هيبة وحكمة الزعيم. الناس بتبصلك بنظرة تقدير عشان بتعرف تقرأ اللي بين السطور وكلامك دايماً في مكانه.',
      traits: ['Wise', 'Prestigous', 'Strategic', 'Calm'],
      traitsArabic: ['حكيم', 'له هيبة', 'استراتيجي', 'راسي'],
      movieClipUrl: 'https://www.youtube.com/watch?v=87y2d5x_zaM',
      movieTitle: 'Adel Imam - The Leader',
      movieTitleArabic: 'عادل إمام - الزعيم',
      emoji: '👑',
    ),
    PersonalityModel(
      id: 'social',
      name: 'The Social Butterfly',
      nameArabic: 'الفراشة الاجتماعية',
      description:
          'You are the link that brings everyone together. Your energy is infectious, and life is better when you\'re around people.',
      descriptionArabic:
          'أنت الحلقة اللي بتجمع كل الناس. طاقتك بتعدي اللي حواليك، والحياة بتبقى أحلى لما تكون وسط اللمة.',
      traits: ['Outgoing', 'Charismatic', 'Lively', 'Friendly'],
      traitsArabic: ['منفتح', 'كاريزما', 'حيوي', 'اجتماعي'],
      movieClipUrl: 'https://www.youtube.com/watch?v=MFM0n-0gzPA',
      movieTitle: 'Egyptian Comedy - Social Vibe',
      movieTitleArabic: 'كوميديا مصرية - روح اللمة',
      emoji: '🎉',
    ),
    PersonalityModel(
      id: 'creative',
      name: 'The Creative Mind',
      nameArabic: 'العقل المبدع',
      description:
          'You see the world differently. You are artistic and always thinking outside the box, adding your unique touch to everything.',
      descriptionArabic:
          'شايف العالم بنظرة مختلفة. فنان في تفكيرك ودايماً بتفكر برا الصندوق، وبتحط تاتش الإبداع بتاعك في كل حاجة.',
      traits: ['Creative', 'Unique', 'Artistic', 'Deep'],
      traitsArabic: ['مبدع', 'مميز', 'فنان', 'عميق'],
      movieClipUrl: 'https://www.youtube.com/watch?v=oYA5BHutnfw',
      movieTitle: 'Egyptian Cinema - Artistic Soul',
      movieTitleArabic: 'السينما المصرية - الروح الفنية',
      emoji: '🎨',
    ),
  ];

  static const List<QuizQuestion> quizQuestions = [
    QuizQuestion(
      id: 1,
      question: 'When you are stressed, what do you do?',
      questionArabic: 'لما بتكون مضغوط، بتعمل إيه؟',
      answers: [
        QuizAnswer(
          text: 'I go out with my friends and forget everything',
          textArabic: 'بخرج مع صحابي وأنسى الدنيا',
          scores: {'comedian': 3, 'social': 2},
        ),
        QuizAnswer(
          text: 'I sit alone to clear my head',
          textArabic: 'بقعد لوحدي أروّق دماغي',
          scores: {'wise': 3, 'creative': 2},
        ),
        QuizAnswer(
          text: 'I do sports or any physical activity',
          textArabic: 'بعمل رياضة أو أي نشاط بدني',
          scores: {'adventurer': 3},
        ),
        QuizAnswer(
          text: 'I listen to music or watch a movie',
          textArabic: 'بسمع مزيكا أو أتفرج على فيلم',
          scores: {'romantic': 3, 'creative': 1},
        ),
      ],
    ),
    QuizQuestion(
      id: 2,
      question: 'What best describes your ideal day off?',
      questionArabic: 'إيه أكتر حاجة بتوصف يوم إجازتك المثالي؟',
      answers: [
        QuizAnswer(
          text: 'A day full of new adventures and discoveries',
          textArabic: 'يوم مليان مغامرات واكتشافات جديدة',
          scores: {'adventurer': 3, 'creative': 1},
        ),
        QuizAnswer(
          text: 'A quiet, relaxing day at home with a book or a movie',
          textArabic: 'يوم هادي ومريح في البيت مع كتاب أو فيلم',
          scores: {'wise': 2, 'romantic': 2, 'creative': 2},
        ),
        QuizAnswer(
          text: 'A nice outing or gathering with family or friends',
          textArabic: 'خروجة أو قعدة حلوة مع العيلة أو الأصحاب',
          scores: {'social': 3, 'comedian': 2},
        ),
      ],
    ),
    QuizQuestion(
      id: 3,
      question: 'What\'s your favorite color style?',
      questionArabic: 'لونك المفضل إيه؟',
      answers: [
        QuizAnswer(
          text: 'Blue or green (calm and relaxing)',
          textArabic: 'أزرق أو أخضر (هادي ومريح)',
          scores: {'wise': 3, 'romantic': 1},
        ),
        QuizAnswer(
          text: 'Red or orange (full of energy and vitality)',
          textArabic: 'أحمر أو برتقالي (مليان طاقة وحيوية)',
          scores: {'adventurer': 3, 'social': 1},
        ),
        QuizAnswer(
          text: 'Black or gray (chic and practical)',
          textArabic: 'أسود أو رمادي (شيك وعملي)',
          scores: {'wise': 1, 'creative': 2},
        ),
      ],
    ),
    QuizQuestion(
      id: 4,
      question: 'If you woke up without an alarm, how would you feel?',
      questionArabic: 'لو صحيت الصبح ومالقتش منبه، بتصحى إزاي؟',
      answers: [
        QuizAnswer(
          text: 'I wake up early on my own like a clock',
          textArabic: 'بصحى لوحدي بدري زي الساعة',
          scores: {'wise': 3, 'adventurer': 1},
        ),
        QuizAnswer(
          text: 'I wake up late and rush to catch up',
          textArabic: 'بصحى متأخر وبستعجل عشان ألحق يومي',
          scores: {'comedian': 3},
        ),
        QuizAnswer(
          text: 'I wait for someone to wake me up',
          textArabic: 'بستنى حد يصحيني أو لما أحس إني نمت كفاية',
          scores: {'romantic': 2, 'social': 1},
        ),
      ],
    ),
    QuizQuestion(
      id: 5,
      question: 'What attracts your attention most in any new place?',
      questionArabic: 'إيه أكتر حاجة بتشد انتباهك في أي مكان جديد؟',
      answers: [
        QuizAnswer(
          text: 'Its history and culture',
          textArabic: 'التاريخ والثقافة بتاعته',
          scores: {'wise': 3, 'creative': 2},
        ),
        QuizAnswer(
          text: 'The local food and atmosphere',
          textArabic: 'الأكل والمشروبات والمزاج المحلي',
          scores: {'social': 2, 'comedian': 3},
        ),
        QuizAnswer(
          text: 'The people and their way of life',
          textArabic: 'الناس وطريقة حياتهم',
          scores: {'social': 3, 'romantic': 1},
        ),
      ],
    ),
    QuizQuestion(
      id: 6,
      question: 'When you meet new people, how do you start?',
      questionArabic: 'لما بتحب تتعرف على ناس جديدة، بتبدأ بـ إيه؟',
      answers: [
        QuizAnswer(
          text: 'I talk to them easily without thinking',
          textArabic: 'بتكلم معاهم بكل سهولة ومن غير تفكير',
          scores: {'social': 3, 'comedian': 3},
        ),
        QuizAnswer(
          text: 'I wait for someone to start talking to me',
          textArabic: 'بستنى لما حد يبدأ الكلام معايا',
          scores: {'romantic': 2, 'wise': 1},
        ),
        QuizAnswer(
          text: 'I observe them first then choose the right time',
          textArabic: 'بلاحظهم الأول وبعدين أختار الوقت المناسب للكلام',
          scores: {'wise': 2, 'creative': 2},
        ),
      ],
    ),
    QuizQuestion(
      id: 7,
      question: 'If you have a meal you love, how would you eat it?',
      questionArabic: 'لو قدامك طبق أكل تحبه، هتاكل إزاي؟',
      answers: [
        QuizAnswer(
          text: 'Calmly and enjoy every bite',
          textArabic: 'بهدوء وأستمتع بكل لقمة',
          scores: {'wise': 2, 'creative': 2},
        ),
        QuizAnswer(
          text: 'Quickly because it tastes so good',
          textArabic: 'بسرعة عشان طعمه حلو ومش قادر أستنى',
          scores: {'adventurer': 2, 'comedian': 2},
        ),
        QuizAnswer(
          text: 'I might share it with those around me',
          textArabic: 'ممكن أشارك اللي حوليا فيه',
          scores: {'social': 3, 'romantic': 2},
        ),
      ],
    ),
    QuizQuestion(
      id: 8,
      question: 'What is your opinion on change?',
      questionArabic: 'إيه رأيك في التغيير؟',
      answers: [
        QuizAnswer(
          text: 'I love change and I\'m always a pioneer',
          textArabic: 'بحب التغيير ومبتدئ دايماً',
          scores: {'adventurer': 3, 'creative': 3},
        ),
        QuizAnswer(
          text: 'I prefer stability but can accept it if necessary',
          textArabic: 'بفضل الاستقرار بس ممكن أتقبل التغيير لو ضروري',
          scores: {'wise': 3},
        ),
        QuizAnswer(
          text: 'I\'m afraid of change and like routine',
          textArabic: 'بخاف من التغيير وبحب الروتين',
          scores: {'romantic': 2},
        ),
      ],
    ),
    QuizQuestion(
      id: 9,
      question: 'When you travel, what do you prefer?',
      questionArabic: 'لما بتسافر، بتفضل إيه؟',
      answers: [
        QuizAnswer(
          text: 'To plan everything in detail',
          textArabic: 'أخطط كل حاجة بالتفصيل',
          scores: {'wise': 3},
        ),
        QuizAnswer(
          text: 'To leave it to chance and see what happens',
          textArabic: 'أسيبها للصدفة وأشوف إيه اللي هيحصل',
          scores: {'adventurer': 3, 'comedian': 2},
        ),
        QuizAnswer(
          text: 'To plan the basics and leave room for surprises',
          textArabic: 'أخطط الأساسيات وأسيب مساحة للمفاجآت',
          scores: {'social': 2, 'creative': 2},
        ),
      ],
    ),
    QuizQuestion(
      id: 10,
      question: 'What makes you happiest?',
      questionArabic: 'إيه أكتر حاجة بتخليك مبسوط؟',
      answers: [
        QuizAnswer(
          text: 'Achieving a big goal',
          textArabic: 'إنجاز هدف كبير',
          scores: {'adventurer': 2, 'wise': 3},
        ),
        QuizAnswer(
          text: 'Helping someone in need',
          textArabic: 'مساعدة حد محتاج',
          scores: {'romantic': 3, 'social': 2},
        ),
        QuizAnswer(
          text: 'Spending quality time with loved ones',
          textArabic: 'قضاء وقت ممتع مع الأحباب',
          scores: {'social': 3, 'comedian': 3},
        ),
      ],
    ),
  ];
}
