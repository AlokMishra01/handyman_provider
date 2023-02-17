// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentTypesModel _$$_DocumentTypesModelFromJson(
        Map<String, dynamic> json) =>
    _$_DocumentTypesModel(
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : DocumentTypeModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DocumentTypesModelToJson(
        _$_DocumentTypesModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_DocumentTypeModel _$$_DocumentTypeModelFromJson(Map<String, dynamic> json) =>
    _$_DocumentTypeModel(
      citizen: json['citizen'] as String? ?? '',
      certificate: json['certificate'] as String? ?? '',
      license: json['license'] as String? ?? '',
    );

Map<String, dynamic> _$$_DocumentTypeModelToJson(
        _$_DocumentTypeModel instance) =>
    <String, dynamic>{
      'citizen': instance.citizen,
      'certificate': instance.certificate,
      'license': instance.license,
    };
