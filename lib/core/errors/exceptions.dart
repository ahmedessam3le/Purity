import 'package:equatable/equatable.dart';

import '../utils/strings_manager.dart';

class ServerException extends Equatable implements Exception {
  final String? message;

  const ServerException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return '$message';
  }
}

class FetchDataException extends ServerException {
  const FetchDataException([message])
      : super(AppStrings.errorDuringCommunication);
}

class BadRequestException extends ServerException {
  const BadRequestException([message]) : super(AppStrings.badRequest);
}

class UnauthorizedException extends ServerException {
  const UnauthorizedException([message]) : super(AppStrings.unauthorized);
}

class NotFoundException extends ServerException {
  const NotFoundException([message]) : super(AppStrings.requestedDataNotFound);
}

class ConflictException extends ServerException {
  const ConflictException([message]) : super(AppStrings.conflictOccurred);
}

class InternalServerErrorException extends ServerException {
  const InternalServerErrorException([message])
      : super(AppStrings.internalServerError);
}

class NoInternetConnectionException extends ServerException {
  const NoInternetConnectionException([message])
      : super(AppStrings.noInternetConnection);
}

class RequestCancelledException extends ServerException {
  const RequestCancelledException([message])
      : super(AppStrings.requestCancelled);
}

class ServiceUnavailableException extends ServerException {
  const ServiceUnavailableException([message])
      : super(AppStrings.serviceUnavailable);
}

class UnableToProcessException extends ServerException {
  const UnableToProcessException([message])
      : super(AppStrings.unableToProcessTheData);
}

class UnExpectedErrorException extends ServerException {
  const UnExpectedErrorException([message])
      : super(message ?? AppStrings.unexpectedErrorOccurred);
}

class MethodNotAllowedException extends ServerException {
  const MethodNotAllowedException([message])
      : super(AppStrings.methodNotAllowed);
}

class ResponseException extends ServerException {
  const ResponseException([message]) : super(message);
}

class CacheException extends Equatable implements Exception {
  final String? message;

  const CacheException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return '$message';
  }
}
