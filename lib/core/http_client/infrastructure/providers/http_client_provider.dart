import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:isolate_test/core/http_client/infrastructure/client.dart';

part 'http_client_provider.g.dart';

@riverpod
httpClient(
  HttpClientRef ref, {
  required String baseUrl,
}) {
  return HttpClientImpl(
    httpDioClient: Dio(
      BaseOptions(
        baseUrl: baseUrl,
      ),
    ),
  );
}
