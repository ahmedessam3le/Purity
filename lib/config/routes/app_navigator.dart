import 'package:flutter/material.dart';

class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();

  static Future<Object?> navigateTo({
    bool isReplace = false,
    required String route,
    dynamic arguments,
  }) {
    if (isReplace) {
      return navigatorState.currentState!.pushReplacementNamed(
        route,
        arguments: arguments,
      );
    } else {
      return navigatorState.currentState!.pushNamed(
        route,
        arguments: arguments,
      );
    }
  }

  static void pop([dynamic result]) => navigatorState.currentState!.pop(result);
}
