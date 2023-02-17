import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_service_model.freezed.dart';
part 'all_service_model.g.dart';

@freezed
class AllServiceModel with _$AllServiceModel {
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
  const factory GeneralServiceModel({
    required int id,
    required String name,
    @Default('') String icon,
  }) = _GeneralServiceModel;

  factory GeneralServiceModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralServiceModelFromJson(json);
}
