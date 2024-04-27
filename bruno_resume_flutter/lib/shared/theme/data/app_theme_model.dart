import 'package:bruno_resume_flutter/shared/theme/data/app_theme.dart';
import 'package:flutter/material.dart';

class AppThemeModel {
  AppThemeModel({
    required this.appTheme,
    required this.themeData,
    required this.icon,
  });

  final AppTheme appTheme;
  final ThemeData themeData;
  final IconData icon;
}
