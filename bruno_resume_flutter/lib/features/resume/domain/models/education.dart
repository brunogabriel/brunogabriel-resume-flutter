import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'education.g.dart';

@JsonSerializable()
@immutable
class Education extends Equatable {
  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);

  const Education({
    required this.name,
    required this.period,
    required this.course,
  });

  final String name;
  final String period;
  final String course;

  Map<String, dynamic> toJson() => _$EducationToJson(this);

  @override
  List<String> get props => [name, period, course];
}
