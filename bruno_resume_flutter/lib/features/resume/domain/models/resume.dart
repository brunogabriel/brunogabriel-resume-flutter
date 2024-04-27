import 'package:bruno_resume_flutter/features/resume/domain/models/about.dart';
import 'package:bruno_resume_flutter/features/resume/domain/models/education.dart';
import 'package:bruno_resume_flutter/features/resume/domain/models/experience.dart';
import 'package:bruno_resume_flutter/features/resume/domain/models/publication.dart';
import 'package:bruno_resume_flutter/features/resume/domain/models/resume_action.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resume.g.dart';

@JsonSerializable()
@immutable
class Resume extends Equatable {
  factory Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);

  const Resume({
    required this.about,
    required this.educations,
    required this.experiences,
    required this.publications,
    required this.extraData,
    required this.actions,
  });

  final About about;
  final List<Education> educations;
  final List<Experience> experiences;
  final List<Publication> publications;
  final List<String> extraData;
  final List<ResumeAction> actions;

  Map<String, dynamic> toJson() => _$ResumeToJson(this);

  @override
  List<Object> get props => [
        about,
        educations,
        experiences,
        publications,
        extraData,
        actions,
      ];
}
