import 'package:bruno_resume_flutter/core/dynamic_extensions.dart';
import 'package:equatable/equatable.dart';

class Experience extends Equatable {
  final String name;
  final String period;
  final String position;
  final String description;
  final List<String> highlights;

  const Experience({
    required this.name,
    required this.period,
    required this.position,
    required this.description,
    required this.highlights,
  });

  Experience.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        period = json['period'],
        position = json['position'],
        description = json['description'],
        highlights =
            (json['highlights'] as List<dynamic>).convertToStringList();

  @override
  List<Object> get props => [name, period, position, description, highlights];
}
