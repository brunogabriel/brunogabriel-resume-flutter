import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

part 'experience.g.dart';

@JsonSerializable()
@immutable
class Experience extends Equatable {
  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);

  const Experience({
    required this.name,
    required this.period,
    required this.position,
    required this.description,
    required this.highlights,
  });

  final String name;
  final String period;
  final String position;
  final String description;
  final List<String> highlights;

  Map<String, dynamic> toJson() => _$ExperienceToJson(this);

  @override
  List<Object> get props => [name, period, position, description, highlights];
}
