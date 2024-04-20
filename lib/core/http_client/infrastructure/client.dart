import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:isolate_test/core/http_client/domain/http_client_interface.dart';
import 'package:isolate_test/core/http_client/http_exception.dart';

class HttpClientImpl extends IHttpClient {
  final Dio httpDioClient;

  HttpClientImpl({
    required this.httpDioClient,
  });

  @override
  Future<Either<Exception, T>> get<T extends Object>(
      {required String path,
      required T Function(Map<String, dynamic> json) deserializationFunction,
      String? baseUrl,
      Map<String, String>? queryParams,
      Map<String, Object>? payload}) async {
    final Response<String> response;
    try {
      response = await httpDioClient.get(
        path,
        queryParameters: queryParams,
        data: payload,
      );
    } on Exception catch (e, stackTrace) {
      return Left(
        HttpException(
          errorMessage: e.toString(),
          stackTrace: stackTrace,
        ),
      );
    }
    if (response.statusCode == HttpStatus.ok) {
      dynamic data;
      try {
        data = jsonDecode(response.data!);
        return right(deserializationFunction(data));
      } catch (e, stackStrace) {
        return left(
          HttpException(
            errorMessage: e.toString(),
            stackTrace: stackStrace,
          ),
        );
      }
    } else {
      return left(HttpException(
        errorMessage: 'Response status ${response.statusCode} error',
        stackTrace: StackTrace.current,
      ));
    }
  }

  @override
  Future<Either<Exception, T>> post<T extends Object>(
      {required String path,
      required Object payload,
      required T Function(Map<String, dynamic> json) deserializationFunction}) {
    // TODO: implement post
    throw UnimplementedError();
  }
}
