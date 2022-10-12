import 'package:equatable/equatable.dart';

class Publication extends Equatable {
  final String conference;
  final String title;
  final String link;
  final String abstract;

  const Publication({
    required this.conference,
    required this.title,
    required this.link,
    required this.abstract,
  });

  Publication.fromJson(Map<String, dynamic> json)
      : conference = json['conference'],
        title = json['title'],
        link = json['link'],
        abstract = json['abstract'];

  @override
  List<Object> get props => [conference, title, link, abstract];
}
