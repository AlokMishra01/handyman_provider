import 'package:freezed_annotation/freezed_annotation.dart';

import 'service_by_id_model.dart';

part 'all_service_model.freezed.dart';
part 'all_service_model.g.dart';

@freezed
class AllServiceModel with _$AllServiceModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AllServiceModel({
    required bool status,
    required String msg,
    @Default([]) List<GeneralServiceModel> data,
  }) = _AllServiceModel;

  factory AllServiceModel.fromJson(Map<String, dynamic> json) =>
      _$AllServiceModelFromJson(json);
}

@freezed
class GeneralServiceModel with _$GeneralServiceModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GeneralServiceModel({
    required int id,
    required String name,
    @Default('') String icon,
    @Default([]) List<ServiceIDModel> services,
  }) = _GeneralServiceModel;

  factory GeneralServiceModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralServiceModelFromJson(json);
}
