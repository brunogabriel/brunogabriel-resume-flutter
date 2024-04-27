import 'package:bruno_resume_flutter/features/resume/domain/models/experience.dart';
import 'package:bruno_resume_flutter/shared/extensions/build_context_extensions.dart';
import 'package:bruno_resume_flutter/shared/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class ExperiencesWidget extends StatelessWidget {
  const ExperiencesWidget({Key? key, required this.experiences})
      : super(key: key);

  final List<Experience> experiences;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: kDefaultSpace,
        ),
        Text(
          'Profissional Experiences',
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        ...experiences
            .map((e) => [
                  Text(
                    '${e.period} | ${e.name}',
                  ),
                  Text(
                    e.position,
                  ),
                  Text(
                    e.description,
                  ),
                  ...e.highlights.map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultSpace,
                      ),
                      child: Text(
                        '• $e',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: kDefaultSpace,
                  )
                ])
            .expand((element) => element)
            .toList()
      ],
    );
  }
}
