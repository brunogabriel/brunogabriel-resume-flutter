import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../data/data_source/resume_data_source.dart';

@module
abstract class ResumeModule {
  ResumeDataSource get provideLocalDataSource =>
      LocalResumeDataSource(assetBundle: rootBundle);
}
