import 'package:dio/dio.dart';
import 'package:handyman_provider/core/base/base_repository.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';

import 'document_repository.dart';

class DocumentRepositoryImpl extends BaseRepository
    implements DocumentRepository {
  DocumentRepositoryImpl(this._logger);

  final Logger _logger;

  @override
  Future addDoc({
    required String title,
    required String type,
    required String file,
    bool isUpdate = false,
  }) async {
    try {
      final data = {
        "title": 2,
        'document_type': type,
        'document': await MultipartFile.fromFile(file),
      };

      if (isUpdate) {
        data.addAll({'_method': 'PUT'});
      }

      final response = await dioClient.dioClient.post(
        'documents',
        data: FormData.fromMap(data),
      );
      _logger.showInfo(message: response.toString());
      await getMyDocs();
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
  Future getDocTypes() async {
    try {
      final response = await dioClient.dioClient.get('document-types');
      _logger.showInfo(message: response.toString());

      await preference.saveValue(AppKeys.documentTypes, response.data);

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
  Future getMyDocs() async {
    try {
      final response = await dioClient.dioClient.get('documents');
      _logger.showInfo(message: response.toString());

      await preference.saveValue(AppKeys.documents, response.data);

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
  Future removeDoc(int id) async {
    try {
      final response = await dioClient.dioClient.delete(
        'documents/$id',
      );
      _logger.showInfo(message: response.toString());
      await getMyDocs();
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
      //
      return error.toString();
    }
  }
}
