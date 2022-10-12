import 'package:bruno_resume_flutter/core/dynamic_extensions.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class About extends Equatable {
  final String fullname;
  final String email;
  final String description;
  final List<String> technologies;

  const About({
    required this.fullname,
    required this.email,
    required this.description,
    required this.technologies,
  });

  About.fromJson(Map<String, dynamic> json)
      : fullname = json['fullname'],
        email = json['email'],
        description = json['description'],
        technologies =
            (json['technologies'] as List<dynamic>).convertToStringList();

  @override
  List<Object> get props => [fullname, email, description, technologies];
}
