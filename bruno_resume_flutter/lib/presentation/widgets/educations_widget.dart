import 'package:bruno_resume_flutter/core/constants.dart';
import 'package:bruno_resume_flutter/domain/model/education.dart';
import 'package:flutter/material.dart';

class EducationsWidget extends StatelessWidget {
  final List<Education> _educations;
  const EducationsWidget(this._educations, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contentTextStyle = Theme.of(context)
        .textTheme
        .bodyLarge
        ?.copyWith(height: kDoubleLineHeight);

    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: kDefaultSpace,
          ),
          Text(
            'Education',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          ..._educations
              .map((e) => [
                    Text(
                      '${e.period} - ${e.name}',
                      style: contentTextStyle,
                    ),
                    Text(
                      e.course,
                      style:
                          contentTextStyle?.copyWith(height: kMediumLineHeight),
                    ),
                    const SizedBox(
                      height: kDefaultSpace,
                    )
                  ])
              .expand((element) => element)
              .toList()
        ],
      ),
    );
  }
}
