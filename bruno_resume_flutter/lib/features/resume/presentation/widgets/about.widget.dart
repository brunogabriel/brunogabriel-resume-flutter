import 'package:bruno_resume_flutter/features/resume/domain/models/about.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    Key? key,
    required this.about,
  }) : super(key: key);

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
              horizontal: 16,
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
