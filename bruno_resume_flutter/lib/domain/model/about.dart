import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class About extends Equatable {
  final String fullname;

  const About({
    required this.fullname,
  });

  About.fromJson(Map<String, dynamic> json) : fullname = json['fullname'];

  @override
  List<Object> get props => [fullname];
}
