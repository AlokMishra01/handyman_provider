import 'package:freezed_annotation/freezed_annotation.dart';

part 'geolocation_model.freezed.dart';
part 'geolocation_model.g.dart';

@freezed
class GeoLocationModel with _$GeoLocationModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GeoLocationModel({
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
  }) = _GeoLocationModel;

  factory GeoLocationModel.fromJson(Map<String, dynamic> json) =>
      _$GeoLocationModelFromJson(json);
}
