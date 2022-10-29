import 'package:bruno_resume_flutter/core/constants.dart';
import 'package:bruno_resume_flutter/domain/model/experience.dart';
import 'package:flutter/material.dart';

class ExperiencesWidget extends StatelessWidget {
  final List<Experience> _experiences;

  const ExperiencesWidget(this._experiences, {Key? key}) : super(key: key);

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
          Text('Profissional Experiences',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold)),
          ..._experiences
              .map((e) => [
                    Text(
                      '${e.period} | ${e.name}',
                      style: contentTextStyle,
                    ),
                    Text(
                      e.position,
                      style: contentTextStyle,
                    ),
                    Text(
                      e.description,
                      style:
                          contentTextStyle?.copyWith(height: kMediumLineHeight),
                    ),
                    ...e.highlights.map((e) => Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultSpace,
                          ),
                          child: Text("• $e",
                              style: contentTextStyle?.copyWith(
                                height: kMediumLineHeight,
                              )),
                        )),
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
