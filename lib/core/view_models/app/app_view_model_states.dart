abstract class AppStates {
  bool? isDark = false;
  AppStates({this.isDark});
}

class AppInitialState extends AppStates {}

class ChangeAppThemeState extends AppStates {
  ChangeAppThemeState(bool isDark) : super(isDark: isDark);
}
