import 'package:bruno_resume_flutter/features/resume/data/data_source/resume_data_source.dart';
import 'package:injectable/injectable.dart';

import '../domain/data/resume_repository.dart';

@Injectable(as: ResumeRepository)
class ResumeRepositoryImpl implements ResumeRepository {
  ResumeRepositoryImpl({required this.dataSource});

  final ResumeDataSource dataSource;

  @override
  Future<dynamic> getResume() => dataSource.getResumeData();
}
