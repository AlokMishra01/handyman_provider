import 'dart:io';

import 'package:dio/dio.dart';
import 'package:handyman_provider/core/base/base_repository.dart';
import 'package:handyman_provider/core/logger/logger.dart';

import 'login_repository.dart';

class LoginRepositoryImpl extends BaseRepository implements LoginRepository {
  LoginRepositoryImpl(this._logger);

  final Logger _logger;

  @override
  Future<dynamic> login(String username, String password) async {
    try {
      final response = await dioClient.dioClient.post(
        'login',
        data: {
          'mobile': username,
          'password': password,
          'device_name': Platform.operatingSystem,
        },
      );
      _logger.showInfo(message: response.toString());

      return response.data;
    } on DioError catch (error, stackTrace) {
      logger.showInfo(
        message: error.type.name,
        error: error,
        stackTrace: stackTrace,
      );

      final message = error.response?.data['message'];
      return message;
    } on Exception catch (error, stackTrace) {
      logger.showInfo(
        message: error.toString(),
        error: error,
        stackTrace: stackTrace,
      );

      return error.toString();
    }
  }

  @override
  Future register(
    String name,
    String mobile,
    String email,
    String password,
    String passwordConfirm,
  ) async {
    try {
      final response = await dioClient.dioClient.post(
        'register',
        data: {
          "name": name,
          "mobile": mobile,
          "email": email,
          "password": password,
          "password_confirmation": passwordConfirm,
          "address": "kathamandu",
          "offered_services": [1, 2],
          "country_code": "+60",
        },
      );
      _logger.showInfo(message: response.toString());

      return response.data;
    } on DioError catch (error, stackTrace) {
      logger.showInfo(
        message: error.type.name,
        error: error,
        stackTrace: stackTrace,
      );

      final message = error.response?.data['message'];
      return message;
    } on Exception catch (error, stackTrace) {
      logger.showInfo(
        message: error.toString(),
        error: error,
        stackTrace: stackTrace,
      );

      return error.toString();
    }
  }

  @override
  Future registerVerify(
    String otp,
    String token,
  ) async {
    try {
      final response = await dioClient.dioClient.post(
        'register/verify',
        data: {
          "otp": otp,
          "token": token,
        },
      );
      _logger.showInfo(message: response.toString());

      return response.data;
    } on DioError catch (error, stackTrace) {
      logger.showInfo(
        message: error.type.name,
        error: error,
        stackTrace: stackTrace,
      );

      final message = error.response?.data['message'];
      return message;
    } on Exception catch (error, stackTrace) {
      logger.showInfo(
        message: error.toString(),
        error: error,
        stackTrace: stackTrace,
      );

      return error.toString();
    }
  }
}
