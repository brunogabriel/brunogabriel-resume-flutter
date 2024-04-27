import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'publication.g.dart';

@JsonSerializable()
@immutable
class Publication extends Equatable {
  factory Publication.fromJson(Map<String, dynamic> json) =>
      _$PublicationFromJson(json);

  const Publication({
    required this.conference,
    required this.title,
    required this.link,
    required this.abstractResume,
  });

  final String conference;
  final String title;
  final String link;
  final String abstractResume;

  Map<String, dynamic> toJson() => _$PublicationToJson(this);

  @override
  List<Object> get props => [conference, title, link, abstractResume];
}
