import 'package:dio/dio.dart';
import 'package:handyman_provider/core/base/base_repository.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/all_services/service_by_id_model.dart';
import 'package:handyman_provider/core/models/all_services/service_package_model.dart';
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

  @override
  Future getMyService() async {
    try {
      final response = await dioClient.dioClient.get('services');
      _logger.showInfo(message: response.toString());

      await preference.saveValue(AppKeys.myService, response.data);

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
  Future addMyService({
    required int serviceId,
    required String price,
    required String duration,
    required String description,
  }) async {
    try {
      final response = await dioClient.dioClient.post(
        'services/store',
        data: {
          'service_id': serviceId,
          'price': price,
          'duration': duration,
          'description': description,
        },
      );
      _logger.showInfo(message: response.toString());

      await getMyService();

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
  Future getServices() async {
    try {
      final response = await dioClient.dioClient.get('services/create');
      _logger.showInfo(message: response.toString());

      await preference.saveValue(AppKeys.services, response.data);

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
  Future removeMyService({required int id}) async {
    try {
      final response = await dioClient.dioClient.delete('services/$id');
      _logger.showInfo(message: response.toString());

      await getMyService();

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
  Future updateMyService({
    required int id,
    required String price,
    required String duration,
    required String description,
  }) async {
    try {
      final response = await dioClient.dioClient.put(
        'services/$id',
        data: {
          'price': price,
          'duration': duration,
          'description': description,
        },
      );
      _logger.showInfo(message: response.toString());

      await getMyService();

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
  Future uploadID({required String id}) async {
    try {
      final response = await dioClient.dioClient.post(
        'id_card',
        data: FormData.fromMap({
          'id_card': await MultipartFile.fromFile(id),
        }),
      );
      _logger.showInfo(message: response.toString());

      await getProfile();

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
  Future updateProfile({
    required String name,
    required String email,
    required String address,
    required String latitude,
    required String longitude,
    required String idNumber,
  }) async {
    try {
      final response = await dioClient.dioClient.put(
        'profile',
        data: {
          "name": name,
          "email": email,
          "latitude": latitude,
          "longitude": longitude,
          "address": address,
          "id_number": idNumber,
        },
      );
      _logger.showInfo(message: response.toString());

      await getProfile();

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
  Future getAllServices() async {
    try {
      final response = await dioClient.dioClient.get(
        'https://handyman.com.my/api/v1/dashboard-types',
      );
      _logger.showInfo(message: response.toString());

      await preference.saveValue(AppKeys.allServices, response.data);

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
  Future<ServiceByIdModel?> getServiceById(int id) async {
    try {
      final response = await dioClient.dioClient.get(
        'https://handyman.com.my/api/v1/service-types/$id/services',
      );
      _logger.showInfo(message: response.toString());

      return ServiceByIdModel.fromJson(response.data);
    } on DioError catch (error, stackTrace) {
      logger.showInfo(
        message: error.type.name,
        error: error,
        stackTrace: stackTrace,
      );

      return null;
    } on Exception catch (error, stackTrace) {
      logger.showInfo(
        message: error.toString(),
        error: error,
        stackTrace: stackTrace,
      );

      return null;
    }
  }

  @override
  Future<ServicePackageModel?> getPackageDetails(int id) async {
    try {
      final response = await dioClient.dioClient.get(
        'https://handyman.com.my/api/v1/services/$id/detail',
      );
      _logger.showInfo(message: response.toString());

      return ServicePackageModel.fromJson(response.data);
    } on DioError catch (error, stackTrace) {
      logger.showInfo(
        message: error.type.name,
        error: error,
        stackTrace: stackTrace,
      );

      return null;
    } on Exception catch (error, stackTrace) {
      logger.showInfo(
        message: error.toString(),
        error: error,
        stackTrace: stackTrace,
      );

      return null;
    }
  }
}
