import 'package:test_your_personalize_app/modules/app/quiz/models/personality_model.dart';
import 'package:test_your_personalize_app/modules/app/quiz/models/question_model.dart';

class StaticData {
  static const List<PersonalityModel> personalityTypes = [
    PersonalityModel(
      id: 'comedian',
      name: 'The Cheerful Comedian',
      nameArabic: 'الكوميدي المرح',
      description:
          'You bring joy and laughter wherever you go! Your sense of humor is infectious, and you have a natural talent for making people smile even in difficult situations.',
      descriptionArabic:
          'أنت تجلب البهجة والضحك أينما ذهبت! حس الفكاهة لديك معدي، ولديك موهبة طبيعية في إسعاد الناس حتى في الأوقات الصعبة.',
      traits: ['Humorous', 'Optimistic', 'Social', 'Quick-witted'],
      traitsArabic: ['فكاهي', 'متفائل', 'اجتماعي', 'سريع البديهة'],
      movieClipUrl:
          'https://www.youtube.com/watch?v=FZEad7fJeYs',
      movieTitle: 'Mohamed Henedy - Comedy Compilation',
      movieTitleArabic: 'محمد هنيدي - مشاهد كوميدية',
      emoji: '😄',
    ),
    PersonalityModel(
      id: 'romantic',
      name: 'The Romantic Dreamer',
      nameArabic: 'الرومانسي الحالم',
      description:
          'You see the world through rose-colored glasses. Love, beauty, and emotions guide your decisions, and you believe in fairy tale endings.',
      descriptionArabic:
          'أنت ترى العالم من خلال نظارة وردية. الحب والجمال والعواطف توجه قراراتك، وتؤمن بالنهايات السعيدة.',
      traits: ['Emotional', 'Idealistic', 'Passionate', 'Sensitive'],
      traitsArabic: ['عاطفي', 'مثالي', 'شغوف', 'حساس'],
      movieClipUrl: 'https://www.youtube.com/watch?v=Gt_5x4uFFXs',
      movieTitle: 'Ahmed Helmy - Zaki Chan',
      movieTitleArabic: 'أحمد حلمي - زكي شان',
      emoji: '💕',
    ),
    PersonalityModel(
      id: 'adventurer',
      name: 'The Bold Adventurer',
      nameArabic: 'المغامر الجريء',
      description:
          'You live for excitement and new experiences! Taking risks doesn\'t scare you - it energizes you. You\'re always ready for the next adventure.',
      descriptionArabic:
          'أنت تعيش من أجل الإثارة والتجارب الجديدة! المخاطرة لا تخيفك - بل تمنحك الطاقة. أنت دائماً مستعد للمغامرة القادمة.',
      traits: ['Brave', 'Spontaneous', 'Energetic', 'Independent'],
      traitsArabic: ['شجاع', 'عفوي', 'نشيط', 'مستقل'],
      movieClipUrl: 'https://www.youtube.com/shorts/NBLfkyg9k20',
      movieTitle: 'Egyptian Action - Classic Scene',
      movieTitleArabic: 'أكشن مصري - مشهد كلاسيكي',
      emoji: '🔥',
    ),
    PersonalityModel(
      id: 'wise',
      name: 'The Wise Philosopher',
      nameArabic: 'الفيلسوف الحكيم',
      description:
          'You think deeply about life and its meaning. People come to you for advice because you have a calm, thoughtful approach to every situation.',
      descriptionArabic:
          'أنت تفكر بعمق في الحياة ومعناها. الناس يأتون إليك طلباً للنصيحة لأن لديك نهج هادئ ومتأني في كل موقف.',
      traits: ['Thoughtful', 'Calm', 'Analytical', 'Patient'],
      traitsArabic: ['متأمل', 'هادئ', 'تحليلي', 'صبور'],
      movieClipUrl: 'https://www.youtube.com/watch?v=87y2d5x_zaM',
      movieTitle: 'Adel Imam - The Leader',
      movieTitleArabic: 'عادل إمام - الزعيم',
      emoji: '🧠',
    ),
    PersonalityModel(
      id: 'social',
      name: 'The Social Butterfly',
      nameArabic: 'الاجتماعي المحبوب',
      description:
          'You\'re the life of every party! You love being around people, making new friends, and creating unforgettable memories with others.',
      descriptionArabic:
          'أنت روح كل حفلة! تحب أن تكون محاطاً بالناس، وتكوين صداقات جديدة، وخلق ذكريات لا تُنسى مع الآخرين.',
      traits: ['Outgoing', 'Friendly', 'Charismatic', 'Enthusiastic'],
      traitsArabic: ['منفتح', 'ودود', 'جذاب', 'متحمس'],
      movieClipUrl: 'https://www.youtube.com/watch?v=MFM0n-0gzPA',
      movieTitle: 'Egyptian Comedy - Party Scene',
      movieTitleArabic: 'كوميديا مصرية - مشهد الحفلة',
      emoji: '🎉',
    ),
    PersonalityModel(
      id: 'creative',
      name: 'The Creative Artist',
      nameArabic: 'الفنان المبدع',
      description:
          'Your imagination knows no bounds! You see beauty and possibilities everywhere, and you express yourself through creativity and art.',
      descriptionArabic:
          'خيالك لا حدود له! ترى الجمال والإمكانيات في كل مكان، وتعبر عن نفسك من خلال الإبداع والفن.',
      traits: ['Imaginative', 'Artistic', 'Original', 'Expressive'],
      traitsArabic: ['خيالي', 'فني', 'أصيل', 'معبر'],
      movieClipUrl: 'https://www.youtube.com/watch?v=oYA5BHutnfw',
      movieTitle: 'Egyptian Cinema - Artistic Scene',
      movieTitleArabic: 'السينما المصرية - مشهد فني',
      emoji: '🎨',
    ),
  ];

  static const List<QuizQuestion> quizQuestions = [
    QuizQuestion(
      id: 1,
      question: 'How do you spend your weekend?',
      questionArabic: 'كيف تقضي عطلة نهاية الأسبوع؟',
      answers: [
        QuizAnswer(
          text: 'Hanging out with friends and having fun',
          textArabic: 'أخرج مع الأصدقاء ونستمتع',
          scores: {'comedian': 2, 'social': 3, 'adventurer': 1},
        ),
        QuizAnswer(
          text: 'Watching romantic movies or reading love stories',
          textArabic: 'أشاهد أفلام رومانسية أو أقرأ قصص حب',
          scores: {'romantic': 3, 'creative': 1},
        ),
        QuizAnswer(
          text: 'Trying something new and exciting',
          textArabic: 'أجرب شيء جديد ومثير',
          scores: {'adventurer': 3, 'creative': 2},
        ),
        QuizAnswer(
          text: 'Reading, thinking, or learning something new',
          textArabic: 'أقرأ أو أفكر أو أتعلم شيء جديد',
          scores: {'wise': 3, 'creative': 1},
        ),
      ],
    ),
    QuizQuestion(
      id: 2,
      question: 'When facing a problem, you usually:',
      questionArabic: 'عندما تواجه مشكلة، عادة ما:',
      answers: [
        QuizAnswer(
          text: 'Make a joke about it to lighten the mood',
          textArabic: 'أمزح عنها لتخفيف الجو',
          scores: {'comedian': 3, 'social': 1},
        ),
        QuizAnswer(
          text: 'Get emotional and seek support from loved ones',
          textArabic: 'أتأثر عاطفياً وأطلب الدعم من أحبائي',
          scores: {'romantic': 3, 'social': 1},
        ),
        QuizAnswer(
          text: 'Face it head-on with confidence',
          textArabic: 'أواجهها بثقة وشجاعة',
          scores: {'adventurer': 3, 'wise': 1},
        ),
        QuizAnswer(
          text: 'Think it through carefully before acting',
          textArabic: 'أفكر فيها بعناية قبل التصرف',
          scores: {'wise': 3, 'creative': 1},
        ),
      ],
    ),
    QuizQuestion(
      id: 3,
      question: 'Your ideal vacation would be:',
      questionArabic: 'عطلتك المثالية ستكون:',
      answers: [
        QuizAnswer(
          text: 'A fun trip with lots of laughter and entertainment',
          textArabic: 'رحلة ممتعة مليئة بالضحك والترفيه',
          scores: {'comedian': 2, 'social': 3},
        ),
        QuizAnswer(
          text: 'A romantic getaway with someone special',
          textArabic: 'رحلة رومانسية مع شخص مميز',
          scores: {'romantic': 3},
        ),
        QuizAnswer(
          text: 'An adventure in a new, exotic location',
          textArabic: 'مغامرة في مكان جديد وغريب',
          scores: {'adventurer': 3, 'creative': 1},
        ),
        QuizAnswer(
          text: 'A peaceful retreat for reflection and relaxation',
          textArabic: 'خلوة هادئة للتأمل والاسترخاء',
          scores: {'wise': 3, 'creative': 2},
        ),
      ],
    ),
    QuizQuestion(
      id: 4,
      question: 'People usually describe you as:',
      questionArabic: 'الناس عادة يصفونك بأنك:',
      answers: [
        QuizAnswer(
          text: 'The funny one who always makes everyone laugh',
          textArabic: 'الشخص المضحك الذي يجعل الجميع يضحكون',
          scores: {'comedian': 3, 'social': 1},
        ),
        QuizAnswer(
          text: 'The sensitive and caring one',
          textArabic: 'الشخص الحساس والمهتم',
          scores: {'romantic': 3},
        ),
        QuizAnswer(
          text: 'The brave one who takes risks',
          textArabic: 'الشخص الشجاع الذي يخاطر',
          scores: {'adventurer': 3},
        ),
        QuizAnswer(
          text: 'The wise one who gives good advice',
          textArabic: 'الشخص الحكيم الذي يعطي نصائح جيدة',
          scores: {'wise': 3},
        ),
      ],
    ),
    QuizQuestion(
      id: 5,
      question: 'At a party, you are most likely to:',
      questionArabic: 'في حفلة، من المرجح أن:',
      answers: [
        QuizAnswer(
          text: 'Be the center of attention telling jokes',
          textArabic: 'تكون مركز الاهتمام وتحكي النكات',
          scores: {'comedian': 3, 'social': 2},
        ),
        QuizAnswer(
          text: 'Have deep conversations with a few people',
          textArabic: 'تجري محادثات عميقة مع بعض الأشخاص',
          scores: {'romantic': 2, 'wise': 2},
        ),
        QuizAnswer(
          text: 'Suggest fun activities or games',
          textArabic: 'تقترح أنشطة أو ألعاب ممتعة',
          scores: {'adventurer': 2, 'social': 3},
        ),
        QuizAnswer(
          text: 'Observe and enjoy the atmosphere',
          textArabic: 'تراقب وتستمتع بالأجواء',
          scores: {'wise': 2, 'creative': 3},
        ),
      ],
    ),
    QuizQuestion(
      id: 6,
      question: 'Your favorite type of movie is:',
      questionArabic: 'نوع الأفلام المفضل لديك:',
      answers: [
        QuizAnswer(
          text: 'Comedy - I love to laugh!',
          textArabic: 'كوميدي - أحب الضحك!',
          scores: {'comedian': 3, 'social': 1},
        ),
        QuizAnswer(
          text: 'Romance - Love stories touch my heart',
          textArabic: 'رومانسي - قصص الحب تلمس قلبي',
          scores: {'romantic': 3},
        ),
        QuizAnswer(
          text: 'Action/Adventure - I love excitement!',
          textArabic: 'أكشن/مغامرات - أحب الإثارة!',
          scores: {'adventurer': 3},
        ),
        QuizAnswer(
          text: 'Drama/Documentary - I enjoy thought-provoking content',
          textArabic: 'دراما/وثائقي - أستمتع بالمحتوى المثير للتفكير',
          scores: {'wise': 3, 'creative': 1},
        ),
      ],
    ),
    QuizQuestion(
      id: 7,
      question: 'When making decisions, you rely on:',
      questionArabic: 'عند اتخاذ القرارات، تعتمد على:',
      answers: [
        QuizAnswer(
          text: 'What feels fun and enjoyable',
          textArabic: 'ما يبدو ممتعاً ومسلياً',
          scores: {'comedian': 2, 'social': 2, 'adventurer': 1},
        ),
        QuizAnswer(
          text: 'Your heart and emotions',
          textArabic: 'قلبك وعواطفك',
          scores: {'romantic': 3, 'creative': 1},
        ),
        QuizAnswer(
          text: 'Your gut instinct and intuition',
          textArabic: 'حدسك وغريزتك',
          scores: {'adventurer': 3},
        ),
        QuizAnswer(
          text: 'Logic and careful analysis',
          textArabic: 'المنطق والتحليل الدقيق',
          scores: {'wise': 3},
        ),
      ],
    ),
    QuizQuestion(
      id: 8,
      question: 'Your dream job would involve:',
      questionArabic: 'وظيفة أحلامك ستتضمن:',
      answers: [
        QuizAnswer(
          text: 'Making people happy and entertained',
          textArabic: 'إسعاد الناس وترفيههم',
          scores: {'comedian': 3, 'social': 2},
        ),
        QuizAnswer(
          text: 'Helping people and making emotional connections',
          textArabic: 'مساعدة الناس وإنشاء روابط عاطفية',
          scores: {'romantic': 2, 'social': 2},
        ),
        QuizAnswer(
          text: 'Excitement, travel, and new experiences',
          textArabic: 'الإثارة والسفر والتجارب الجديدة',
          scores: {'adventurer': 3},
        ),
        QuizAnswer(
          text: 'Creating, innovating, or expressing yourself',
          textArabic: 'الإبداع والابتكار أو التعبير عن نفسك',
          scores: {'creative': 3, 'wise': 1},
        ),
      ],
    ),
    QuizQuestion(
      id: 9,
      question: 'In your free time, you prefer to:',
      questionArabic: 'في وقت فراغك، تفضل أن:',
      answers: [
        QuizAnswer(
          text: 'Watch comedy shows or funny videos',
          textArabic: 'تشاهد برامج كوميدية أو فيديوهات مضحكة',
          scores: {'comedian': 3},
        ),
        QuizAnswer(
          text: 'Listen to music and daydream',
          textArabic: 'تستمع للموسيقى وتحلم',
          scores: {'romantic': 3, 'creative': 2},
        ),
        QuizAnswer(
          text: 'Do sports or outdoor activities',
          textArabic: 'تمارس الرياضة أو الأنشطة الخارجية',
          scores: {'adventurer': 3, 'social': 1},
        ),
        QuizAnswer(
          text: 'Read, write, or work on creative projects',
          textArabic: 'تقرأ أو تكتب أو تعمل على مشاريع إبداعية',
          scores: {'creative': 3, 'wise': 2},
        ),
      ],
    ),
    QuizQuestion(
      id: 10,
      question: 'What matters most to you in life?',
      questionArabic: 'ما الذي يهمك أكثر في الحياة؟',
      answers: [
        QuizAnswer(
          text: 'Happiness and enjoying every moment',
          textArabic: 'السعادة والاستمتاع بكل لحظة',
          scores: {'comedian': 2, 'social': 2, 'adventurer': 1},
        ),
        QuizAnswer(
          text: 'Love and meaningful relationships',
          textArabic: 'الحب والعلاقات ذات المعنى',
          scores: {'romantic': 3, 'social': 1},
        ),
        QuizAnswer(
          text: 'Freedom and living life to the fullest',
          textArabic: 'الحرية والعيش بأقصى استفادة',
          scores: {'adventurer': 3},
        ),
        QuizAnswer(
          text: 'Knowledge, wisdom, and personal growth',
          textArabic: 'المعرفة والحكمة والنمو الشخصي',
          scores: {'wise': 3, 'creative': 1},
        ),
      ],
    ),
  ];
}
