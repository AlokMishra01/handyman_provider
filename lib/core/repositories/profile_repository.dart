import 'package:handyman_provider/core/models/all_services/service_by_id_model.dart';
import 'package:handyman_provider/core/models/all_services/service_package_model.dart';

abstract class ProfileRepository {
  Future<dynamic> getProfile();

  Future<dynamic> updateProfile({
    required String name,
    required String email,
    required String address,
    required String info,
    required String skills,
    required String experience,
    required String latitude,
    required String longitude,
    required List<int> serviceTypeId,
    required String idNumber,
    required List<int> services,
  });

  Future<dynamic> uploadID({required String id});

  Future<dynamic> getAllServices();

  Future<ServiceByIdModel?> getServiceById(int id);

  Future<ServicePackageModel?> getPackageDetails(int id);

  Future<dynamic> getMyService();

  Future<dynamic> getServices();

  Future<dynamic> addMyService({
    required int serviceId,
    required String price,
    required String duration,
    required String description,
  });

  Future<dynamic> updateMyService({
    required int id,
    required String price,
    required String duration,
    required String description,
  });

  Future<dynamic> removeMyService({required int id});
}
