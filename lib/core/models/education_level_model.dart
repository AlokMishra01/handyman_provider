import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_level_model.freezed.dart';
part 'education_level_model.g.dart';

@freezed
class EducationLevelModel with _$EducationLevelModel {
  const factory EducationLevelModel({
    required int id,
    @Default('') String name,
  }) = _EducationLevelModel;

  factory EducationLevelModel.fromJson(Map<String, dynamic> json) =>
      _$EducationLevelModelFromJson(json);
}
