import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

extension StringExtensions on String {
  IconData? get appIconData {
    if (this == 'envelope') {
      return FontAwesomeIcons.envelope;
    } else if (this == 'medium') {
      return FontAwesomeIcons.medium;
    } else if (this == 'linkedin') {
      return FontAwesomeIcons.linkedin;
    }
    return null;
  }
}
