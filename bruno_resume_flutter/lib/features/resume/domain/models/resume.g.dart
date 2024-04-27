// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resume _$ResumeFromJson(Map<String, dynamic> json) => Resume(
      about: About.fromJson(json['about'] as Map<String, dynamic>),
      educations: (json['educations'] as List<dynamic>)
          .map((e) => Education.fromJson(e as Map<String, dynamic>))
          .toList(),
      experiences: (json['experiences'] as List<dynamic>)
          .map((e) => Experience.fromJson(e as Map<String, dynamic>))
          .toList(),
      publications: (json['publications'] as List<dynamic>)
          .map((e) => Publication.fromJson(e as Map<String, dynamic>))
          .toList(),
      extraData:
          (json['extraData'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ResumeToJson(Resume instance) => <String, dynamic>{
      'about': instance.about,
      'educations': instance.educations,
      'experiences': instance.experiences,
      'publications': instance.publications,
      'extraData': instance.extraData,
    };
