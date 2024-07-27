import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension BoolExtensions on bool {
  ThemeData get themeData {
    final baseTheme = ThemeData.from(
      colorScheme: this
          ? const ColorScheme.light(
              primary: Colors.blue,
            )
          : const ColorScheme.dark(
              primary: Colors.lightBlue,
            ),
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
    );
  }
}
