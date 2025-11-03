abstract class _Enum<T> {
  final T _value;

  const _Enum(this._value);

  T get value => _value;
}

class CachingKeys extends _Enum<String> {
  const CachingKeys(super.val);

  static const CachingKeys isFirstLaunch = CachingKeys('is_first_launch');
  static const CachingKeys isLoggedIn = CachingKeys('is_logged_in');
  static const CachingKeys isEnglish = CachingKeys('is_english');
  static const CachingKeys appTheme = CachingKeys('app_theme');
  static const CachingKeys languageCode = CachingKeys('language_code');
  static const CachingKeys enLangCode = CachingKeys('en');
  static const CachingKeys arLangCode = CachingKeys('ar');
}
