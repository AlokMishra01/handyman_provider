// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_by_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceByIdModel _$$_ServiceByIdModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceByIdModel(
      status: json['status'] as bool? ?? true,
      msg: json['msg'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ServiceIDModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ServiceByIdModelToJson(_$_ServiceByIdModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$_ServiceIDModel _$$_ServiceIDModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceIDModel(
      id: json['id'] as int,
      title: json['title'] as String? ?? '',
      type: json['type'] as String? ?? '',
      rating: json['rating'] as int? ?? 0,
      cost: json['cost'] as String? ?? '',
      discount: json['discount'] as String? ?? '',
      duration: json['duration'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
    );

Map<String, dynamic> _$$_ServiceIDModelToJson(_$_ServiceIDModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'rating': instance.rating,
      'cost': instance.cost,
      'discount': instance.discount,
      'duration': instance.duration,
      'description': instance.description,
      'icon': instance.icon,
    };
