import 'package:bruno_resume_flutter/domain/model/about.dart';
import 'package:bruno_resume_flutter/domain/model/education.dart';
import 'package:equatable/equatable.dart';

class Resume extends Equatable {
  final About about;
  final List<Education> educations;

  const Resume({
    required this.about,
    required this.educations,
  });

  Resume.fromJson(Map<String, dynamic> json)
      : about = About.fromJson(json['about']),
        educations = (json['educations'] as List<dynamic>)
            .map((e) => Education.fromJson(e))
            .toList();

  @override
  List<Object> get props => [about, educations];
}
