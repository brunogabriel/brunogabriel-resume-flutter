import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert';

abstract class ResumeService {
  Future<dynamic> getResponse();
}

@Injectable(as: ResumeService)
class ResumeServiceImpl implements ResumeService {
  @override
  Future<dynamic> getResponse() => rootBundle
      .loadString('assets/resume.json')
      .then((value) => jsonDecode(value));
}
