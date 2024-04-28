import 'package:bruno_resume_flutter/features/change_theme/domain/change_theme_use_case.dart';
import 'package:bruno_resume_flutter/features/change_theme/domain/repository/change_theme_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class ChangeThemeRepositoryMock extends Mock implements ChangeThemeRepository {}

void main() {
  late ChangeThemeRepository repository;
  late ChangeThemeUseCase useCase;
  setUpAll(() {
    repository = ChangeThemeRepositoryMock();
    useCase = ChangeThemeUseCaseImpl(repository: repository);
  });
  test('SHOULD change theme', () {
    // given
    when(() => repository.changeTheme(any())).thenAnswer((_) => Future.value());

    // then
    expect(useCase.execute(true), completes);
  });
}
