import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_by_id_model.freezed.dart';
part 'service_by_id_model.g.dart';

@freezed
class ServiceByIdModel with _$ServiceByIdModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ServiceByIdModel({
    @Default(true) bool status,
    @Default('') String msg,
    @Default([]) List<ServiceIDModel> data,
  }) = _ServiceByIdModel;

  factory ServiceByIdModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceByIdModelFromJson(json);
}

@freezed
class ServiceIDModel with _$ServiceIDModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ServiceIDModel({
    required int id,
    @Default('') String title,
    @Default('') String type,
    @Default(0) int rating,
    @Default('') String cost,
    @Default('') String discount,
    @Default('') String duration,
    @Default('') String description,
    @Default('') String icon,
  }) = _ServiceIDModel;

  factory ServiceIDModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceIDModelFromJson(json);
}
