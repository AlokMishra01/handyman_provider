import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_package_model.freezed.dart';
part 'service_package_model.g.dart';

@freezed
class ServicePackageModel with _$ServicePackageModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ServicePackageModel({
    @Default(true) bool status,
    @Default('') String msg,
    required ServiceDataModel data,
  }) = _ServicePackageModel;

  factory ServicePackageModel.fromJson(Map<String, dynamic> json) =>
      _$ServicePackageModelFromJson(json);
}

@freezed
class ServiceDataModel with _$ServiceDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ServiceDataModel({
    required int id,
    @Default('') String title,
    @Default('') String type,
    @Default(0) int rating,
    @Default('') String cost,
    @Default('') String discount,
    @Default('') String duration,
    @Default('') String description,
    @Default('') String icon,
    @Default([]) List<Package> packages,
    @Default([]) List<ProfessionalService> professionalServices,
  }) = _ServiceDataModel;

  factory ServiceDataModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDataModelFromJson(json);
}

@freezed
class Package with _$Package {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Package({
    required int id,
    @Default('') String title,
    @Default('') String duration,
    @Default('') String cost,
    @Default('') String discount,
    @Default('') String description,
    @Default('') String icon,
    @Default(0) int rating,
  }) = _Package;

  factory Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);
}

@freezed
class ProfessionalService with _$ProfessionalService {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProfessionalService({
    required int professionalId,
    @Default('') String professionalName,
    @Default('') String professionalImage,
    required int serviceId,
    @Default('') String serviceName,
    @Default('') String price,
    @Default('') String duration,
    @Default('') String discount,
    @Default('') String description,
  }) = _ProfessionalService;

  factory ProfessionalService.fromJson(Map<String, dynamic> json) =>
      _$ProfessionalServiceFromJson(json);
}
