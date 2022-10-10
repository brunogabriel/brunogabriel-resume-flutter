import 'package:equatable/equatable.dart';

class Education extends Equatable {
  final String name;

  const Education({
    required this.name,
  });

  Education.fromJson(Map<String, dynamic> json) : name = json['name'];

  @override
  List<String> get props => [name];
}
