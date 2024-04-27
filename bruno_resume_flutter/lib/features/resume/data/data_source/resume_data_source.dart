import 'dart:convert';

import 'package:flutter/material.dart';

abstract class ResumeDataSource {
  Future<dynamic> getResumeData();
}

class LocalResumeDataSource extends ResumeDataSource {
  LocalResumeDataSource({
    required this.assetBundle,
  });

  final AssetBundle assetBundle;

  @override
  Future getResumeData() => assetBundle
      .loadString('assets/resume.json')
      .then((value) => jsonDecode(value));
}
