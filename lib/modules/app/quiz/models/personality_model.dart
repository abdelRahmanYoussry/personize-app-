import 'package:equatable/equatable.dart';

class PersonalityModel extends Equatable {
  final String id;
  final String name;
  final String nameArabic;
  final String description;
  final String descriptionArabic;
  final List<String> traits;
  final List<String> traitsArabic;
  final String movieClipUrl;
  final String movieTitle;
  final String movieTitleArabic;
  final String emoji;

  const PersonalityModel({
    required this.id,
    required this.name,
    required this.nameArabic,
    required this.description,
    required this.descriptionArabic,
    required this.traits,
    required this.traitsArabic,
    required this.movieClipUrl,
    required this.movieTitle,
    required this.movieTitleArabic,
    required this.emoji,
  });

  String? get youtubeVideoId {
    final uri = Uri.tryParse(movieClipUrl);
    if (uri == null) return null;
    if (uri.pathSegments.contains('embed')) {
      // Handle embed format
      final lastSegment = uri.pathSegments.last;
      if (lastSegment == 'videoseries') {
        // It's a playlist
        return uri.queryParameters['list'];
      }
      return lastSegment;
    }
    return null;
  }

  bool get isPlaylist => movieClipUrl.contains('videoseries');

  @override
  List<Object?> get props => [id, name, movieClipUrl];
}
