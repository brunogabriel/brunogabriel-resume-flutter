import 'package:bruno_resume_flutter/features/resume/domain/models/about.dart';
import 'package:bruno_resume_flutter/shared/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
    required this.about,
  });

  final About about;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(about.description),
        ...List.generate(
          about.technologies.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultSpace,
            ),
            child: Text(
              '• ${about.technologies[index]}',
            ),
          ),
        )
      ],
    );
  }
}
