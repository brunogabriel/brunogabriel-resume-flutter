import 'package:injectable/injectable.dart';

import '../domain/repository/change_theme_repository.dart';
import 'data_source/change_theme_data_source.dart';

@Injectable(as: ChangeThemeRepository)
class ChangeThemeRepositoryImpl implements ChangeThemeRepository {
  ChangeThemeRepositoryImpl(
      {required ChangeThemeDataSource changeThemeDataSource})
      : _changeThemeDataSource = changeThemeDataSource;

  final ChangeThemeDataSource _changeThemeDataSource;

  @override
  Future<void> changeTheme(bool enableDarkMode) =>
      _changeThemeDataSource.changeTheme(enableDarkMode);

  @override
  Future<bool> isDarkThemeEnabled() =>
      _changeThemeDataSource.isDarkThemeEnabled();
}
