import 'package:bruno_resume_flutter/features/resume/domain/data/resume_repository.dart';
import 'package:bruno_resume_flutter/features/resume/domain/models/resume.dart';
import 'package:bruno_resume_flutter/shared/architecture/use_case.dart';
import 'package:injectable/injectable.dart';

abstract class ResumeUseCase extends FutureBaseUseCase<Resume> {
  @override
  Future<Resume> execute();
}

@Injectable(as: ResumeUseCase)
class ResumeUseCaseImpl extends ResumeUseCase {
  ResumeUseCaseImpl({required ResumeRepository resumeRepository})
      : _resumeRepository = resumeRepository;

  final ResumeRepository _resumeRepository;

  @override
  Future<Resume> execute() async => _resumeRepository
      .getResume()
      .then((value) => Resume.fromJson(value))
      .onError((error, stackTrace) => throw Exception("Can't load resume"));
}
