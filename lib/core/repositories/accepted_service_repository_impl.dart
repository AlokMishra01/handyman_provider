import 'package:dio/dio.dart';
import 'package:handyman_provider/core/base/base_repository.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';

import 'accepted_service_repository.dart';

class AcceptedServiceRepositoryImpl extends BaseRepository
    implements AcceptedServiceRepository {
  AcceptedServiceRepositoryImpl(this._logger);

  final Logger _logger;

  @override
  Future getAccepted() async {
    try {
      final response = await dioClient.dioClient.get('accepted-orders');
      _logger.showInfo(message: response.toString());

      await preference.saveValue(AppKeys.accepted, response.data);

      return null;
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
  Future completeService(int id) async {
    try {
      final response = await dioClient.dioClient.put(
        'assigned-orders/$id/status',
        data: {"status": 2},
      );
      _logger.showInfo(message: response.toString());

      getAccepted();

      return true;
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
  Future acceptService(int id) async {
    try {
      final response = await dioClient.dioClient.post(
        'assigned-orders/$id',
      );
      _logger.showInfo(message: response.toString());

      getAssigned();
      getAccepted();

      return true;
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
  Future getAssigned() async {
    try {
      final response = await dioClient.dioClient.get('assigned-orders');
      _logger.showInfo(message: response.toString());

      await preference.saveValue(AppKeys.assigned, response.data);

      return null;
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
