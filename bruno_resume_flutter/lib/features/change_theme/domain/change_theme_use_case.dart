import 'package:bruno_resume_flutter/features/change_theme/domain/repository/change_theme_repository.dart';
import 'package:bruno_resume_flutter/shared/architecture/use_case.dart';
import 'package:injectable/injectable.dart';

abstract class ChangeThemeUseCase extends FutureUseCase<void, bool> {
  @override
  Future<void> execute(bool params);
}

@Injectable(as: ChangeThemeUseCase)
class ChangeThemeUseCaseImpl implements ChangeThemeUseCase {
  ChangeThemeUseCaseImpl({required ChangeThemeRepository repository})
      : _repository = repository;

  final ChangeThemeRepository _repository;

  @override
  Future<void> execute(bool params) => _repository.changeTheme(params);
}
