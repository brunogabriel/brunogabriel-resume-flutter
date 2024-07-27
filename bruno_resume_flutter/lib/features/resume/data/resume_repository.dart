import 'package:injectable/injectable.dart';

import '../domain/data/resume_repository.dart';
import 'data_source/resume_data_source.dart';

@Injectable(as: ResumeRepository)
class ResumeRepositoryImpl implements ResumeRepository {
  ResumeRepositoryImpl({required ResumeDataSource dataSource})
      : _dataSource = dataSource;

  final ResumeDataSource _dataSource;

  @override
  Future<dynamic> getResume() => _dataSource.getResumeData();
}
