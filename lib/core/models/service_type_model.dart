import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_type_model.freezed.dart';
part 'service_type_model.g.dart';

@freezed
class ServiceTypeModel with _$ServiceTypeModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ServiceTypeModel({
    required int id,
    @Default('') String name,
    @Default('') String icon,
  }) = _ServiceTypeModel;

  factory ServiceTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceTypeModelFromJson(json);
}
