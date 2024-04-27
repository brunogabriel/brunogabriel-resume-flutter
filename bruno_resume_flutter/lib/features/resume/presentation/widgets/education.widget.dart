import 'package:bruno_resume_flutter/features/resume/domain/models/education.dart';
import 'package:bruno_resume_flutter/shared/extensions/build_context_extensions.dart';
import 'package:bruno_resume_flutter/shared/theme/theme_constants.dart';
import 'package:flutter/widgets.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({
    Key? key,
    required this.educations,
  }) : super(key: key);

  final List<Education> educations;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: kDefaultSpace,
        ),
        Text(
          'Education',
          style: context.textTheme.titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        ...educations
            .map((e) => [
                  Text(
                    '${e.period} - ${e.name}',
                  ),
                  Text(
                    e.course,
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
