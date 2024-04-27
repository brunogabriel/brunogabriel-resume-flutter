import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension BoolExtensions on bool {
  ThemeData get themeData {
    final baseTheme =
        ThemeData(brightness: this ? Brightness.dark : Brightness.light);

    return baseTheme.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
      useMaterial3: true,
    );
  }
}
