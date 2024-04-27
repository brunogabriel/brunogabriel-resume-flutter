import 'package:bruno_resume_flutter/features/change_theme/domain/repository/change_theme_repository.dart';
import 'package:bruno_resume_flutter/shared/architecture/use_case.dart';
import 'package:injectable/injectable.dart';

abstract class GetThemeUseCase extends FutureBaseUseCase<bool> {
  @override
  Future<bool> execute();
}

@Injectable(as: GetThemeUseCase)
class GetThemeUseCaseImpl implements GetThemeUseCase {
  GetThemeUseCaseImpl({required ChangeThemeRepository repository})
      : _repository = repository;

  final ChangeThemeRepository _repository;

  @override
  Future<bool> execute() => _repository.isDarkThemeEnabled();
}
