import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:handyman_provider/core/models/accepted_services/accepted_service_model.dart';

part 'services_model.freezed.dart';
part 'services_model.g.dart';

@freezed
class ServicesModel with _$ServicesModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ServicesModel({
    @Default([]) List<ServiceModel> data,
    Links? links,
    Meta? meta,
  }) = _ServicesModel;

  factory ServicesModel.fromJson(Map<String, dynamic> json) =>
      _$ServicesModelFromJson(json);
}

@freezed
class ServiceModel with _$ServiceModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ServiceModel({
    @Default(-1) int id,
    @Default('') String title,
    @Default('') String type,
    @Default(0) int rating,
    @Default('') String cost,
    @Default('') String discount,
    @Default('') String duration,
    @Default('') String description,
    @Default('') String icon,
    @Default('') String serviceType,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
