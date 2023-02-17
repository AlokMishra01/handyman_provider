// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyServiceModel _$$_MyServiceModelFromJson(Map<String, dynamic> json) =>
    _$_MyServiceModel(
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

Map<String, dynamic> _$$_MyServiceModelToJson(_$_MyServiceModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'links': instance.links?.toJson(),
      'meta': instance.meta?.toJson(),
    };

_$_ServiceModel _$$_ServiceModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceModel(
      id: json['id'] as int? ?? -1,
      serviceId: json['service_id'] as int? ?? -1,
      serviceName: json['service_name'] as String? ?? '',
      price: json['price'] as String? ?? '',
      duration: json['duration'] as String? ?? '',
      discount: json['discount'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$_ServiceModelToJson(_$_ServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_id': instance.serviceId,
      'service_name': instance.serviceName,
      'price': instance.price,
      'duration': instance.duration,
      'discount': instance.discount,
      'description': instance.description,
    };
