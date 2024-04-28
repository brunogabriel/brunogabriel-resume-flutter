import 'package:bruno_resume_flutter/features/change_theme/data/change_theme_repository.dart';
import 'package:bruno_resume_flutter/features/change_theme/data/data_source/change_theme_data_source.dart';
import 'package:bruno_resume_flutter/features/change_theme/domain/repository/change_theme_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class ChangeThemeDataSourceMock extends Mock implements ChangeThemeDataSource {}

void main() {
  late ChangeThemeDataSourceMock dataSource;
  late ChangeThemeRepository repository;
  setUpAll(() {
    dataSource = ChangeThemeDataSourceMock();
    repository = ChangeThemeRepositoryImpl(changeThemeDataSource: dataSource);
  });
  test(
    'SHOULD change theme',
    () {
      // given
      when(() => dataSource.changeTheme(any()))
          .thenAnswer((_) => Future.value());

      // then
      expect(repository.changeTheme(true), completes);
    },
  );

  test(
      'SHOULD get right answer '
      'WHEN isDarkThemeEnabled', () {
    // given
    when(() => dataSource.isDarkThemeEnabled())
        .thenAnswer((_) => Future.value(true));

    // then
    expect(repository.isDarkThemeEnabled(), completion(true));
  });
}
