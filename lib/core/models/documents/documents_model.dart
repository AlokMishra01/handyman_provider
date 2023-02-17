import 'package:freezed_annotation/freezed_annotation.dart';

part 'documents_model.freezed.dart';
part 'documents_model.g.dart';

@freezed
class DocumentsModel with _$DocumentsModel {
  const factory DocumentsModel({
    @Default('') String message,
    @Default([]) List<DocumentModel> data,
  }) = _DocumentsModel;

  factory DocumentsModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentsModelFromJson(json);
}

@freezed
class DocumentModel with _$DocumentModel {
  const factory DocumentModel({
    @Default(-1) int id,
    @Default('') String title,
    @Default('') String documentType,
    @Default('') String documentPath,
  }) = _DocumentModel;

  factory DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentModelFromJson(json);
}
