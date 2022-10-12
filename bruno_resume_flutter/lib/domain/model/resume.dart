import 'package:bruno_resume_flutter/core/dynamic_extensions.dart';
import 'package:bruno_resume_flutter/domain/model/about.dart';
import 'package:bruno_resume_flutter/domain/model/education.dart';
import 'package:bruno_resume_flutter/domain/model/experience.dart';
import 'package:bruno_resume_flutter/domain/model/publication.dart';
import 'package:equatable/equatable.dart';

class Resume extends Equatable {
  final About about;
  final List<Education> educations;
  final List<Experience> experiences;
  final List<Publication> publications;
  final List<String> extraData;

  const Resume({
    required this.about,
    required this.educations,
    required this.experiences,
    required this.publications,
    required this.extraData,
  });

  Resume.fromJson(Map<String, dynamic> json)
      : about = About.fromJson(json['about']),
        educations = (json['educations'] as List<dynamic>)
            .map((e) => Education.fromJson(e))
            .toList(),
        experiences = (json['experiences'] as List<dynamic>)
            .map((e) => Experience.fromJson(e))
            .toList(),
        publications = (json['publications'] as List<dynamic>)
            .map((e) => Publication.fromJson(e))
            .toList(),
        extraData = (json['extraData'] as List<dynamic>).convertToStringList();

  @override
  List<Object> get props => [about, educations, publications, extraData];
}
