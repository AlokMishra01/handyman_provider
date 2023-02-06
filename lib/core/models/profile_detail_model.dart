import 'package:freezed_annotation/freezed_annotation.dart';

import 'city_model.dart';
import 'education_level_model.dart';
import 'geolocation_model.dart';

part 'profile_detail_model.freezed.dart';
part 'profile_detail_model.g.dart';

@freezed
class ProfileDetailModel with _$ProfileDetailModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProfileDetailModel({
    @Default('') String shortInfo,
    @Default('') String experience,
    @Default('') String address,
    @Default('') String skills,
    GeoLocationModel? geolocation,
    CityModel? city,
    EducationLevelModel? educationLevel,
  }) = _ProfileDetailModel;

  factory ProfileDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileDetailModelFromJson(json);
}
