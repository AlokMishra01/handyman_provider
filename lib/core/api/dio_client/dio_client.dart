import 'package:dio/dio.dart';

import 'custom_interceptor.dart';

class DioClient {
  final Dio dioClient = Dio();

  DioClient() {
    dioClient.options.baseUrl = 'https://handyman.com.my/api/v1/professional/';
    dioClient.options.responseType = ResponseType.json;
    dioClient.options.headers.addAll({'Accept': 'application/json'});
    dioClient.interceptors.add(ClientInterceptor());
  }
}
