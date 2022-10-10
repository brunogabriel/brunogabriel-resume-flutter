import 'package:bruno_resume_flutter/data/service/resume_service.dart';
import 'package:bruno_resume_flutter/domain/model/resume.dart';
import 'package:injectable/injectable.dart';

abstract class ResumeUseCase {
  Future<Resume> getResume();
}

@Injectable(as: ResumeUseCase)
class ResumeUseCaseImpl implements ResumeUseCase {
  final ResumeService _service;

  const ResumeUseCaseImpl(this._service);

  @override
  Future<Resume> getResume() =>
      _service.getResponse().then((value) => Resume.fromJson(value));
}
