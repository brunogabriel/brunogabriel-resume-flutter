import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ChangeThemeDataSource {
  Future<bool> isDarkThemeEnabled();
  Future<void> changeTheme(bool enableDarkMode);
}

@Injectable(as: ChangeThemeDataSource)
class LocalChangeThemeDataSource implements ChangeThemeDataSource {
  LocalChangeThemeDataSource({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;
  final _key = 'darkModeEnabled';

  @override
  Future<void> changeTheme(bool enableDarkMode) async {
    await _sharedPreferences.setBool(_key, enableDarkMode);
  }

  @override
  Future<bool> isDarkThemeEnabled() async {
    if (_sharedPreferences.containsKey(_key)) {
      return _sharedPreferences.getBool(_key) ?? false;
    }
    return Future.value(false);
  }
}
