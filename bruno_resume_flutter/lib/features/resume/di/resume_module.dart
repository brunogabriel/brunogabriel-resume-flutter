import 'package:bruno_resume_flutter/features/resume/data/data_source/resume_data_source.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ResumeModule {
  ResumeDataSource get provideLocalDataSource =>
      LocalResumeDataSource(assetBundle: rootBundle);
}
