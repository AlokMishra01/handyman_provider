import 'package:dio/dio.dart';
import 'package:handyman_provider/core/base/base_repository.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';

import 'balance_repository.dart';

class BalanceRepositoryImpl extends BaseRepository
    implements BalanceRepository {
  BalanceRepositoryImpl(this._logger);

  final Logger _logger;

  @override
  Future getBalance() async {
    try {
      final response = await dioClient.dioClient.get('transactions');
      _logger.showInfo(message: response.toString());

      await preference.saveValue(AppKeys.balance, response.data);

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
  Future getIncome() async {
    try {
      final response = await dioClient.dioClient.get('income');
      _logger.showInfo(message: response.toString());

      await preference.saveValue(AppKeys.income, response.data);

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
  Future topUp() async {
    // try {
    //   final response = await dioClient.dioClient.put(
    //     'assigned-orders/$id/status',
    //     data: {"status": 2},
    //   );
    //   _logger.showInfo(message: response.toString());
    //
    //   getBalance();
    //
    //   return true;
    // } on DioError catch (error, stackTrace) {
    //   logger.showInfo(
    //     message: error.type.name,
    //     error: error,
    //     stackTrace: stackTrace,
    //   );
    //
    //   final message = error.response?.data['message'];
    //   return message;
    // } on Exception catch (error, stackTrace) {
    //   logger.showInfo(
    //     message: error.toString(),
    //     error: error,
    //     stackTrace: stackTrace,
    //   );
    //
    //   return error.toString();
    // }
  }
}
