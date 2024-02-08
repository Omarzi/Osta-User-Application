import 'package:flutter/material.dart';

class OColors {
  OColors._();

  /// App Basic Colors
  // static const Color primary = Color(0xFF004aad);
  static const Color primary = Color(0xFF30C7D1);
  static const Color primaryDark = Colors.blueGrey;
  static const Color accent = Color(0xFFB0C7FF);
  static const Color blue = Color(0xFF2370A2);

  /// Gradient Colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD0C4),
      Color(0xFFFAD0C4),
    ],
  );

  /// Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  ///Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  ///Background Container Color
  static const Color lightContainer = Color(0xFFF6F6F6);
  static final Color darkContainer = OColors.white.withOpacity(0.1);

  ///Button Colors
  static const Color buttonPrimary = Color(0xFF004aad);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  /// Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  /// Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color warning2 = Color(0xFFFECC00);
  static const Color info = Color(0xFF1976D2);

  /// Text Form Field Colors
  static const Color labelColor = Color(0xFF9C9C9C);

  /// Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color grey2 = Color(0xFF7C7C7C);
  static const Color bgColorOfCategoryComponent = Color(0xFFFCFCFC);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
  static const Color transparent = Colors.transparent;

  static const Color bgCall =Color(0xFFD1F6F2);
  static const Color iconCall =Color(0xFF1EC1AD);
  static const Color bgLocation =Color(0xFFFAE1DF);
  static const Color iconLocation =Color(0xFFEA6A53);
  static const Color textForm =Color(0xFFF1F1F2);


}
