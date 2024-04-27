// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Publication _$PublicationFromJson(Map<String, dynamic> json) => Publication(
      conference: json['conference'] as String,
      title: json['title'] as String,
      link: json['link'] as String,
      abstractResume: json['abstractResume'] as String,
    );

Map<String, dynamic> _$PublicationToJson(Publication instance) =>
    <String, dynamic>{
      'conference': instance.conference,
      'title': instance.title,
      'link': instance.link,
      'abstractResume': instance.abstractResume,
    };
