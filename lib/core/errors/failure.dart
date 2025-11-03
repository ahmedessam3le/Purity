import 'package:equatable/equatable.dart';

import '../utils/strings_manager.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure([message]) : super(message: message);
}

class SomethingWentWrongFailure extends Failure {
  const SomethingWentWrongFailure([message])
      : super(message: message ?? AppStrings.somethingWentWrong);
}

class CacheFailure extends Failure {
  const CacheFailure(message) : super(message: message);
}
