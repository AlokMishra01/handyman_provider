// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServicesModel _$$_ServicesModelFromJson(Map<String, dynamic> json) =>
    _$_ServicesModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ServicesModelToJson(_$_ServicesModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'links': instance.links?.toJson(),
      'meta': instance.meta?.toJson(),
    };

_$_ServiceModel _$$_ServiceModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceModel(
      id: json['id'] as int? ?? -1,
      title: json['title'] as String? ?? '',
      type: json['type'] as String? ?? '',
      rating: json['rating'] as int? ?? 0,
      cost: json['cost'] as String? ?? '',
      discount: json['discount'] as String? ?? '',
      duration: json['duration'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      serviceType: json['service_type'] as String? ?? '',
    );

Map<String, dynamic> _$$_ServiceModelToJson(_$_ServiceModel instance) =>
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
      'service_type': instance.serviceType,
    };
