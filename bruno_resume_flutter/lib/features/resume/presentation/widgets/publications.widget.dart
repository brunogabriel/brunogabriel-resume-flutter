import 'package:bruno_resume_flutter/features/resume/domain/models/publication.dart';
import 'package:bruno_resume_flutter/shared/extensions/build_context_extensions.dart';
import 'package:bruno_resume_flutter/shared/extensions/string_extensions.dart';
import 'package:bruno_resume_flutter/shared/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class PublicationsWidget extends StatelessWidget {
  const PublicationsWidget({super.key, required this.publications});

  final List<Publication> publications;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: kDefaultSpace,
        ),
        Text(
          'Publications',
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        ...publications
            .map((publication) => [
                  Text(
                    publication.title,
                  ),
                  const SizedBox(
                    height: kSmallSpace,
                  ),
                  TextButton(
                    onPressed: () async {
                      publication.link.launch();
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      publication.conference,
                    ),
                  ),
                  Text(
                    publication.abstractResume,
                  ),
                  const SizedBox(
                    height: kDefaultSpace,
                  )
                ])
            .expand((element) => element)
      ],
    );
  }
}
