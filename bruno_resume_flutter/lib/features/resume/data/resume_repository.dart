import 'package:bruno_resume_flutter/features/resume/data/data_source/resume_data_source.dart';
import 'package:injectable/injectable.dart';

import '../domain/data/resume_repository.dart';

@Injectable(as: ResumeRepository)
class ResumeRepositoryImpl implements ResumeRepository {
  ResumeRepositoryImpl({required ResumeDataSource dataSource})
      : _dataSource = dataSource;

  final ResumeDataSource _dataSource;

  @override
  Future<dynamic> getResume() => _dataSource.getResumeData();
}
