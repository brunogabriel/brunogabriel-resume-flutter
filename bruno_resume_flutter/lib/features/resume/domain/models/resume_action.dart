import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resume_action.g.dart';

@JsonSerializable()
@immutable
class ResumeAction extends Equatable {
  factory ResumeAction.fromJson(Map<String, dynamic> json) =>
      _$ResumeActionFromJson(json);

  const ResumeAction({
    required this.title,
    required this.icon,
    required this.link,
  });

  final String title;
  final String icon;
  final String link;

  Map<String, dynamic> toJson() => _$ResumeActionToJson(this);

  @override
  List<Object> get props => [title, icon, link];
}
