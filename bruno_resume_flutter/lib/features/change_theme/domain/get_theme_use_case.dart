import 'package:injectable/injectable.dart';

import '../../../shared/architecture/use_case.dart';
import 'repository/change_theme_repository.dart';

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
