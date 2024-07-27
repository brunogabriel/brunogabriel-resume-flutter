import 'package:bruno_resume_flutter/shared/theme/extensions/bool_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import 'di/injection.dart';
import 'features/change_theme/presentation/cubit/change_theme_cubit.dart';
import 'features/resume/presentation/page/resume_page.dart';

void main() async {
  GoogleFonts.config.allowRuntimeFetching = false;
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChangeThemeCubit>(
      create: (_) => GetIt.I.get<ChangeThemeCubit>()..start(),
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeThemeCubit, bool>(
      builder: (_, state) {
        return MaterialApp(
          title: 'Bruno Gabriel',
          theme: state.themeData,
          debugShowCheckedModeBanner: false,
          home: const SelectionArea(child: ResumePage()),
        );
      },
    );
  }
}
