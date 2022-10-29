import 'package:bruno_resume_flutter/core/constants.dart';
import 'package:bruno_resume_flutter/domain/model/publication.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PublicationsWidget extends StatelessWidget {
  final List<Publication> _publications;

  const PublicationsWidget(this._publications, {Key? key}) : super(key: key);

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
          Text('Publications',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold)),
          ..._publications
              .map((e) => [
                    Text(
                      e.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: kSmallSpace,
                    ),
                    TextButton(
                      onPressed: () async {
                        if (!await launchUrl(Uri.parse(e.link))) {
                          // Can´t show content
                        }
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
                      e.abstract,
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
