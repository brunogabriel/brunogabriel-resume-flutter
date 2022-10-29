import 'package:bruno_resume_flutter/core/constants.dart';
import 'package:bruno_resume_flutter/domain/model/about.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  final About _about;

  const AboutWidget(this._about, {Key? key}) : super(key: key);

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
            height: kBigSpace,
          ),
          Text(
            _about.fullname,
            style: const TextStyle(fontSize: kNameTextSize),
          ),
          Text(
            _about.email,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.blue),
          ),
          Text(
            _about.description,
            style: contentTextStyle,
          ),
          ..._about.technologies.map((e) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultSpace,
                ),
                child: Text(
                  "• $e",
                  style: contentTextStyle?.copyWith(
                    height: kMediumLineHeight,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
