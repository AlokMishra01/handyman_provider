import 'package:dio/dio.dart';
import 'package:handyman_provider/core/base/base_repository.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';

import 'profile_repository.dart';

class ProfileRepositoryImpl extends BaseRepository
    implements ProfileRepository {
  ProfileRepositoryImpl(this._logger);

  final Logger _logger;

  @override
  Future<String?> getProfile() async {
    try {
      final response = await dioClient.dioClient.get('profile');
      _logger.showInfo(message: response.toString());

      await preference.saveValue(AppKeys.profile, response.data['data']);

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
