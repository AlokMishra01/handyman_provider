// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoLocationModel _$$_GeoLocationModelFromJson(Map<String, dynamic> json) =>
    _$_GeoLocationModel(
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_GeoLocationModelToJson(_$_GeoLocationModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
