import 'package:flutter/material.dart';

class AppColors {
  // Light theme colors
  static const Color background = Color(0xFFF3F4F7);
  static const Color surface = Colors.white;
  static const Color primary = Color(0xFF5C6BF1); // Indigo
  static const Color secondary = Color(0xFF8B5CF6); // Purple
  static const Color accent = Color(0xFF4CC9F0); // Pink
  static const Color textPrimary = Color(0xFF0F172A);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color error = Color(0xFFFF6B6B);
  static const Color success = Color(0xFF2DD4BF);
  static const Color cardBorder = Color(0xFFE5E7EB);
  static const Color subtleStroke = Color(0xFFD4D8E1);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF5C6BF1), Color(0xFF7F5AF0)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [Color(0xFF4CC9F0), Color(0xFF5AF7B0)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [Color(0xFFF7F8FA), Color(0xFFF1F4F8)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient heroGradient = LinearGradient(
    colors: [Color(0xFF141A2D), Color(0xFF1F2A44)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient glassGradient = LinearGradient(
    colors: [Colors.white70, Colors.white10],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
