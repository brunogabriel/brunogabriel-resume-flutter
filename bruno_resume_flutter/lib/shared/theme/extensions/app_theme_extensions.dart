import 'package:bruno_resume_flutter/shared/theme/data/app_theme.dart';
import 'package:bruno_resume_flutter/shared/theme/data/app_theme_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension AppThemeExtensions on AppTheme {
  AppThemeModel get dayTheme => AppThemeModel(
        appTheme: AppTheme.day,
        icon: Icons.sunny,
        themeData: _buildDayTheme(),
      );
}

ThemeData _buildDayTheme() {
  final baseTheme = ThemeData(brightness: Brightness.light);
  return baseTheme.copyWith(
    textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
    useMaterial3: true,
  );
}
