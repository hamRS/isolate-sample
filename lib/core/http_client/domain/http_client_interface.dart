import 'package:fpdart/fpdart.dart';

abstract class IHttpClient {
  Future<Either<Exception, T>> get<T extends Object>({
    required String path,
    required T Function(Map<String, dynamic> json) deserializationFunction,
    String? baseUrl,
    Map<String, String>? queryParams,
    Map<String, Object>? payload,
  });

  Future<Either<Exception, T>> post<T extends Object>({
    required String path,
    required Object payload,
    required T Function(Map<String, dynamic> json) deserializationFunction,
  });
}
