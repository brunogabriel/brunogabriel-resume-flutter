import 'package:bruno_resume_flutter/features/resume/presentation/page/resume_page.dart';
import 'package:bruno_resume_flutter/shared/theme/data/app_theme.dart';
import 'package:bruno_resume_flutter/shared/theme/extensions/app_theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'di/injection.dart';

void main() async {
  GoogleFonts.config.allowRuntimeFetching = false;
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.day.dayTheme.themeData,
      debugShowCheckedModeBanner: false,
      home: const SelectionArea(child: ResumePage()),
    );
  }
}
