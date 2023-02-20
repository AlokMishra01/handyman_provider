// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServicePackageModel _$$_ServicePackageModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServicePackageModel(
      status: json['status'] as bool? ?? true,
      msg: json['msg'] as String? ?? '',
      data: ServiceDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ServicePackageModelToJson(
        _$_ServicePackageModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data.toJson(),
    };

_$_ServiceDataModel _$$_ServiceDataModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceDataModel(
      id: json['id'] as int,
      title: json['title'] as String? ?? '',
      type: json['type'] as String? ?? '',
      rating: json['rating'] as int? ?? 0,
      cost: json['cost'] as String? ?? '',
      discount: json['discount'] as String? ?? '',
      duration: json['duration'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      packages: (json['packages'] as List<dynamic>?)
              ?.map((e) => Package.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      professionalServices: (json['professional_services'] as List<dynamic>?)
              ?.map((e) =>
                  ProfessionalService.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ServiceDataModelToJson(_$_ServiceDataModel instance) =>
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
      'packages': instance.packages.map((e) => e.toJson()).toList(),
      'professional_services':
          instance.professionalServices.map((e) => e.toJson()).toList(),
    };

_$_Package _$$_PackageFromJson(Map<String, dynamic> json) => _$_Package(
      id: json['id'] as int,
      title: json['title'] as String? ?? '',
      duration: json['duration'] as String? ?? '',
      cost: json['cost'] as String? ?? '',
      discount: json['discount'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      rating: json['rating'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PackageToJson(_$_Package instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'duration': instance.duration,
      'cost': instance.cost,
      'discount': instance.discount,
      'description': instance.description,
      'icon': instance.icon,
      'rating': instance.rating,
    };

_$_ProfessionalService _$$_ProfessionalServiceFromJson(
        Map<String, dynamic> json) =>
    _$_ProfessionalService(
      professionalId: json['professional_id'] as int,
      professionalName: json['professional_name'] as String? ?? '',
      professionalImage: json['professional_image'] as String? ?? '',
      serviceId: json['service_id'] as int,
      serviceName: json['service_name'] as String? ?? '',
      price: json['price'] as String? ?? '',
      duration: json['duration'] as String? ?? '',
      discount: json['discount'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$_ProfessionalServiceToJson(
        _$_ProfessionalService instance) =>
    <String, dynamic>{
      'professional_id': instance.professionalId,
      'professional_name': instance.professionalName,
      'professional_image': instance.professionalImage,
      'service_id': instance.serviceId,
      'service_name': instance.serviceName,
      'price': instance.price,
      'duration': instance.duration,
      'discount': instance.discount,
      'description': instance.description,
    };
