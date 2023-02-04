import 'package:dio/dio.dart';

import 'custom_interceptor.dart';

class DioClient {
  final Dio dioClient = Dio();

  DioClient() {
    dioClient.options.baseUrl = '';
    dioClient.interceptors.add(ClientInterceptor());
  }
}
