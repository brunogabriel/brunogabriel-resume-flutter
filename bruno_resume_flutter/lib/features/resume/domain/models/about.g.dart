// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

About _$AboutFromJson(Map<String, dynamic> json) => About(
      fullname: json['fullname'] as String,
      email: json['email'] as String,
      description: json['description'] as String,
      technologies: (json['technologies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AboutToJson(About instance) => <String, dynamic>{
      'fullname': instance.fullname,
      'email': instance.email,
      'description': instance.description,
      'technologies': instance.technologies,
    };
