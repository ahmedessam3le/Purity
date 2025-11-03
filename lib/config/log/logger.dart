import 'dart:developer' as developer;

class Logger {
  static void print({required String title, String? message}) {
    developer.log(
      name: 'Logger',
      '${'-' * 16} [ $title ] ${'-' * 16}${message != null ? '\n\t\t$message' : ''}',
    );
  }
}
