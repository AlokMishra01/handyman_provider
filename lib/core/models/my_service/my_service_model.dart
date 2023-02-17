import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:handyman_provider/core/models/accepted_services/accepted_service_model.dart';

part 'my_service_model.freezed.dart';
part 'my_service_model.g.dart';

@freezed
class MyServiceModel with _$MyServiceModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MyServiceModel({
    @Default([]) List<ServiceModel> data,
    Links? links,
    Meta? meta,
  }) = _MyServiceModel;

  factory MyServiceModel.fromJson(Map<String, dynamic> json) =>
      _$MyServiceModelFromJson(json);
}

@freezed
class ServiceModel with _$ServiceModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ServiceModel({
    @Default(-1) int id,
    @Default(-1) int serviceId,
    @Default('') String serviceName,
    @Default('') String price,
    @Default('') String duration,
    @Default('') String discount,
    @Default('') String description,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
