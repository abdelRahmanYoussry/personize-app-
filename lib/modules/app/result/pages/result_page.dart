import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:test_your_personalize_app/core/localization/app_localizations.dart';
import 'package:test_your_personalize_app/core/theme/app_colors.dart';
import 'package:test_your_personalize_app/modules/app/quiz/models/personality_model.dart';
import 'package:test_your_personalize_app/modules/app/result/bloc/result_bloc.dart';
import 'package:test_your_personalize_app/core/di/di.dart';
import 'package:test_your_personalize_app/core/cache/cache_helper.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late YoutubePlayerController _controller;
  bool _isPlayerReady = false;
  PersonalityModel? _model;
  final ScreenshotController _screenshotController = ScreenshotController();
  bool _isSharing = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_model == null) {
      final args = ModalRoute.of(context)?.settings.arguments;
      if (args is PersonalityModel) {
        _model = args;
        _initVideo(args);
        // Save result with user name
        final userName =
            di<CacheHelper>().getData(key: 'userName') ?? 'Guest User';
        context.read<ResultCubit>().saveResult(args, userName.toString());
      }
    }
  }

  void _initVideo(PersonalityModel model) {
    String? videoId = model.youtubeVideoId;

    if (videoId == null) {
      videoId = YoutubePlayer.convertUrlToId(model.movieClipUrl);
    }

    if (videoId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
          loop: true,
          enableCaption: false,
        ),
      )..addListener(() {
        if (mounted) setState(() {});
      });
      _isPlayerReady = true;
    }
  }

  @override
  void dispose() {
    if (_isPlayerReady) _controller.dispose();
    super.dispose();
  }

  Future<void> _shareResult() async {
    if (_isSharing) return;

    setState(() {
      _isSharing = true;
    });

    try {
      final locale = AppLocalizations.of(context);
      final Uint8List? imageBytes = await _screenshotController.capture(
        delay: const Duration(milliseconds: 100),
        pixelRatio: 2.0,
      );

      if (imageBytes != null) {
        final directory = await getTemporaryDirectory();
        final imagePath = '${directory.path}/personality_result_${DateTime.now().millisecondsSinceEpoch}.png';
        final imageFile = File(imagePath);
        await imageFile.writeAsBytes(imageBytes);

        await Share.shareXFiles(
          [XFile(imagePath)],
          text: locale?.shareResult ?? 'My Personality Result',
        );
      }
    } catch (e) {
      final locale = AppLocalizations.of(context);
      debugPrint(e.toString()+' Error sharing result');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(locale?.shareError ?? 'Error sharing result'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSharing = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    final isArabic = locale?.locale.languageCode == 'ar';

    if (_model == null) {
      return const Scaffold(body: Center(child: Text("No Result Data")));
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0x80000000), // 0.5 opacity black
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Section: Video
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: AppColors.primaryGradient,
              ),
              child: _isPlayerReady
                  ? YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,

                      progressIndicatorColor: AppColors.accent,
                      onReady: () {},
                    )
                  : Center(
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: const Color(0x33FFFFFF), // 0.2 opacity white
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.movie,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
            ),

            // Content
            Screenshot(
              controller: _screenshotController,
              child: Container(
                transform: Matrix4.translationValues(0, -15, 0),
                decoration: const BoxDecoration(
                  gradient: AppColors.backgroundGradient,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Emoji
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: AppColors.primaryGradient,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withAlpha(77), // 0.3 opacity
                              blurRadius: 20,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Text(
                          _model!.emoji,
                          style: const TextStyle(fontSize: 60),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Congratulations
                      Text(
                        locale?.yourPersonalityType ?? 'Your Personality Type',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.textSecondary,
                            ),
                      ),
                      const SizedBox(height: 8),

                      // Title - Show name based on language
                      ShaderMask(
                        shaderCallback: (bounds) =>
                            AppColors.primaryGradient.createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                        ),
                        child: Text(
                          isArabic ? _model!.nameArabic : _model!.name,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Description Box
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColors.cardBorder),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x0D000000), // 0.05 opacity black
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Text(
                          isArabic ? _model!.descriptionArabic : _model!.description,
                          textAlign: TextAlign.center,
                          textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                height: 1.6,
                                color: AppColors.textPrimary,
                              ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Traits Section
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: AppColors.cardBorder),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    gradient: AppColors.primaryGradient,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  locale?.keyTraits ?? 'Key Traits',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(fontSize: 18),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: (isArabic ? _model!.traitsArabic : _model!.traits).map((trait) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    gradient: AppColors.primaryGradient,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    trait,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Movie Info
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: AppColors.cardBorder),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                gradient: AppColors.accentGradient,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.movie_creation_outlined,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    locale?.yourMovieScene ?? 'Your Movie Scene',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: AppColors.textSecondary,
                                        ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    isArabic ? _model!.movieTitleArabic : _model!.movieTitle,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                    textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 32),

                      // Action Buttons
                      Container(
                        decoration: BoxDecoration(
                          gradient: AppColors.primaryGradient,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withAlpha(102), // 0.4 opacity
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: _isSharing ? null : _shareResult,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            minimumSize: const Size(double.infinity, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: _isSharing
                              ? const SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.share),
                                    const SizedBox(width: 8),
                                    Text(
                                      locale?.shareResult ?? 'Share Result',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).popUntil((route) => route.isFirst);
                        },
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 56),
                          side: const BorderSide(color: AppColors.primary),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(
                          locale?.backToHome ?? 'Back to Home',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
