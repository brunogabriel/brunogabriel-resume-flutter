// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Experience _$ExperienceFromJson(Map<String, dynamic> json) => Experience(
      name: json['name'] as String,
      period: json['period'] as String,
      position: json['position'] as String,
      description: json['description'] as String,
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ExperienceToJson(Experience instance) =>
    <String, dynamic>{
      'name': instance.name,
      'period': instance.period,
      'position': instance.position,
      'description': instance.description,
      'highlights': instance.highlights,
    };
