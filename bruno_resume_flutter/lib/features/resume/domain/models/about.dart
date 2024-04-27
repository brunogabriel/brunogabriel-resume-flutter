import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'about.g.dart';

@JsonSerializable()
@immutable
class About extends Equatable {
  factory About.fromJson(Map<String, dynamic> json) => _$AboutFromJson(json);

  const About({
    required this.fullname,
    required this.email,
    required this.description,
    required this.technologies,
  });

  final String fullname;
  final String email;
  final String description;
  final List<String> technologies;

  Map<String, dynamic> toJson() => _$AboutToJson(this);

  @override
  List<Object> get props => [fullname, email, description, technologies];
}
