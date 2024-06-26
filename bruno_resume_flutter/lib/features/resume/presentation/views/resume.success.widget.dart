import 'package:bruno_resume_flutter/features/resume/presentation/cubit/resume_cubit.dart';
import 'package:bruno_resume_flutter/features/resume/presentation/widgets/about.widget.dart';
import 'package:bruno_resume_flutter/features/resume/presentation/widgets/education.widget.dart';
import 'package:bruno_resume_flutter/features/resume/presentation/widgets/experiences.widget.dart';
import 'package:bruno_resume_flutter/features/resume/presentation/widgets/publications.widget.dart';
import 'package:bruno_resume_flutter/shared/extensions/build_context_extensions.dart';
import 'package:bruno_resume_flutter/shared/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResumeSuccessWidget extends StatelessWidget {
  const ResumeSuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final resume =
        (context.read<ResumeCubit>().state as ResumeResultState).result;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: kDefaultSpace,
          ),
          Text(
            resume.about.fullname,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          AboutWidget(
            about: resume.about,
          ),
          EducationWidget(educations: resume.educations),
          ExperiencesWidget(experiences: resume.experiences),
          PublicationsWidget(publications: resume.publications),
        ],
      ),
    );
  }
}
