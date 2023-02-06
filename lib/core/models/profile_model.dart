import 'package:freezed_annotation/freezed_annotation.dart';

import 'profile_detail_model.dart';
import 'service_type_model.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProfileModel({
    @Default(0) int id,
    @Default('') String balance,
    @Default('') String name,
    @Default('') String mobile,
    @Default('') String email,
    @Default('') String idNumber,
    @Default('') String idCardThumb,
    // 1: approved, 2: requested, else: make request services/permission
    @Default(0) int addPrice,
    @Default(false) bool verificationStatus,
    @Default(false) bool emailVerificationStatus,
    @Default('') String profileImage,
    @Default([]) List<ServiceTypeModel> offeredServices,
    ProfileDetailModel? detail,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
