import 'dart:convert';

import 'package:dio/dio.dart';

import '/core/di/app_locator.dart';
import '/core/logger/logger.dart';
import '/core/preference/app_keys.dart';
import '/core/preference/preference.dart';

class ClientInterceptor extends Interceptor {
  final _logger = AppLocator.locator<Logger>();
  final _preference = AppLocator.locator<Preference>();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    RequestOptions requestOptions = options;

    final token = await _preference.getString(AppKeys.token);
    requestOptions.headers.addAll({'Authorization': 'Bearer $token'});

    _logger.showInfo(message: requestOptions.uri.toString());
    _logger.showInfo(message: requestOptions.headers);
    _logger.showInfo(message: requestOptions.data);
    return handler.next(requestOptions);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.showInfo(message: response.statusCode);
    _logger.showInfo(message: response.statusMessage);
    _logger.showInfo(message: jsonEncode(response.data));
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    _logger.showInfo(message: err.type, error: err.error);
    _logger.showInfo(message: err.response?.statusCode, error: err.error);
    _logger.showInfo(message: err.response?.statusMessage, error: err.error);
    _logger.showInfo(message: err.response?.data, error: err.error);
    super.onError(err, handler);
  }
}
