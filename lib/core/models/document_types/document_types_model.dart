import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_types_model.freezed.dart';
part 'document_types_model.g.dart';

@freezed
class DocumentTypesModel with _$DocumentTypesModel {
  const factory DocumentTypesModel({
    @Default('') String message,
    DocumentTypeModel? data,
  }) = _DocumentTypesModel;

  factory DocumentTypesModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentTypesModelFromJson(json);
}

@freezed
class DocumentTypeModel with _$DocumentTypeModel {
  const factory DocumentTypeModel({
    @Default('') String citizen,
    @Default('') String certificate,
    @Default('') String license,
  }) = _DocumentTypeModel;

  factory DocumentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentTypeModelFromJson(json);
}
