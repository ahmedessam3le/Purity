import 'package:flutter/material.dart';

/// AppConstants class is used to manage the frequently used methods & widgets

class AppConstants {
  // Numbers

  static const int splashDelay = 5000;
  static const double defaultButtonRadius = 3;
  static const int passwordLength = 8;
  static const int toastDuration = 2000;

  // Strings
  static String? appLocale;
  static const Locale englishLocale = Locale('en');
  static const Locale arabicLocale = Locale('ar');

  static const List<Locale> supportedLocales = [englishLocale, arabicLocale];
}
