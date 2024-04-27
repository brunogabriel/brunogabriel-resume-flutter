import 'dart:convert';

import 'package:flutter/material.dart';

abstract class ResumeDataSource {
  Future<dynamic> getResumeData();
}

class LocalResumeDataSource extends ResumeDataSource {
  LocalResumeDataSource({
    required AssetBundle assetBundle,
  }) : _assetBundle = assetBundle;

  final AssetBundle _assetBundle;

  @override
  Future getResumeData() => _assetBundle
      .loadString('assets/resume.json')
      .then((value) => jsonDecode(value));
}
