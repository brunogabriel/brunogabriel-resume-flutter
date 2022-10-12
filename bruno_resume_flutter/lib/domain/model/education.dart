import 'package:equatable/equatable.dart';

class Education extends Equatable {
  final String name;
  final String period;
  final String course;

  const Education({
    required this.name,
    required this.period,
    required this.course,
  });

  Education.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        period = json['period'],
        course = json['course'];

  @override
  List<String> get props => [name, period, course];
}
