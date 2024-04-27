import 'package:bruno_resume_flutter/features/resume/domain/models/publication.dart';
import 'package:bruno_resume_flutter/shared/extensions/build_context_extensions.dart';
import 'package:bruno_resume_flutter/shared/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class PublicationsWidget extends StatelessWidget {
  const PublicationsWidget({Key? key, required this.publications})
      : super(key: key);

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
            .map((e) => [
                  Text(
                    e.title,
                  ),
                  const SizedBox(
                    height: kSmallSpace,
                  ),
                  TextButton(
                    onPressed: () async {
                      // if (!await launchUrl(Uri.parse(e.link))) {
                      //   // Can´t show content
                      // }
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      e.conference,
                    ),
                  ),
                  Text(
                    e.abstractResume,
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
