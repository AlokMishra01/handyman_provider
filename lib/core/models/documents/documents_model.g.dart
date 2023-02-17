// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documents_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentsModel _$$_DocumentsModelFromJson(Map<String, dynamic> json) =>
    _$_DocumentsModel(
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => DocumentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DocumentsModelToJson(_$_DocumentsModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_DocumentModel _$$_DocumentModelFromJson(Map<String, dynamic> json) =>
    _$_DocumentModel(
      id: json['id'] as int? ?? -1,
      title: json['title'] as String? ?? '',
      documentType: json['documentType'] as String? ?? '',
      documentPath: json['documentPath'] as String? ?? '',
    );

Map<String, dynamic> _$$_DocumentModelToJson(_$_DocumentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'documentType': instance.documentType,
      'documentPath': instance.documentPath,
    };
