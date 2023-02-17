// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllServiceModel _$$_AllServiceModelFromJson(Map<String, dynamic> json) =>
    _$_AllServiceModel(
      status: json['status'] as bool,
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  GeneralServiceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AllServiceModelToJson(_$_AllServiceModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_$_GeneralServiceModel _$$_GeneralServiceModelFromJson(
        Map<String, dynamic> json) =>
    _$_GeneralServiceModel(
      id: json['id'] as int,
      name: json['name'] as String,
      icon: json['icon'] as String? ?? '',
    );

Map<String, dynamic> _$$_GeneralServiceModelToJson(
        _$_GeneralServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };
