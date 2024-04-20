import 'package:equatable/equatable.dart';

class HttpException extends Equatable implements Exception {
  final String errorMessage;
  final String? errorCode;
  final StackTrace? stackTrace;
  const HttpException({
    required this.errorMessage,
    this.errorCode,
    required this.stackTrace,
  });
  @override
  List<Object?> get props => [
        errorCode,
        errorMessage,
        stackTrace,
      ];

  @override
  bool? get stringify => true;
}
