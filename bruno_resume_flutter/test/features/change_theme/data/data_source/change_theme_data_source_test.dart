import 'package:bruno_resume_flutter/features/change_theme/data/data_source/change_theme_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesMock extends Mock implements SharedPreferences {}

void main() {
  late SharedPreferences sharedPreferences;
  late ChangeThemeDataSource dataSource;

  setUpAll(() {
    sharedPreferences = SharedPreferencesMock();
    dataSource =
        LocalChangeThemeDataSource(sharedPreferences: sharedPreferences);
  });

  test(
      'GIVEN an empty Shared Preferences '
      'WHEN call isDarkThemeEnabled '
      'THEN get false', () {
    // given
    when(() => sharedPreferences.containsKey(any())).thenReturn(false);

    // then
    expect(dataSource.isDarkThemeEnabled(), completion(false));
  });

  test(
      'GIVEN a previous theme '
      'WHEN call isDarkThemeEnabled '
      'THEN get the result', () {
    // given
    when(() => sharedPreferences.containsKey(any())).thenReturn(true);
    when(() => sharedPreferences.getBool(any())).thenReturn(true);

    // then
    expect(dataSource.isDarkThemeEnabled(), completion(true));
  });

  test('SHOULD change theme', () {
    // given
    when(() => sharedPreferences.setBool(any(), any()))
        .thenAnswer((_) => Future.value(true));

    // then
    expect(dataSource.changeTheme(false), completes);
    final capturedTheme =
        verify(() => sharedPreferences.setBool(any(), captureAny())).captured;
    expect(capturedTheme.last, isFalse);
  });
}
