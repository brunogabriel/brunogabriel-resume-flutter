import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

extension StringExtensions on String {
  IconData? get appIconData {
    if (this == 'envelope') {
      return FontAwesomeIcons.solidEnvelope;
    } else if (this == 'medium') {
      return FontAwesomeIcons.medium;
    } else if (this == 'linkedin') {
      return FontAwesomeIcons.linkedin;
    }
    return null;
  }

  Future<void> launch() async {
    try {
      if (!await launchUrl(Uri.parse(this))) {
        // error
      }
    } catch (_) {}
  }
}
