abstract class ChangeThemeRepository {
  Future<void> changeTheme(bool enableDarkMode);
  Future<bool> isDarkThemeEnabled();
}
