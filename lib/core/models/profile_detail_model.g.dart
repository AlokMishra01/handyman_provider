// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDetailModel _$$_ProfileDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileDetailModel(
      shortInfo: json['short_info'] as String? ?? '',
      experience: json['experience'] as String? ?? '',
      address: json['address'] as String? ?? '',
      skills: json['skills'] as String? ?? '',
      geolocation: json['geolocation'] == null
          ? null
          : GeoLocationModel.fromJson(
              json['geolocation'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
      educationLevel: json['education_level'] == null
          ? null
          : EducationLevelModel.fromJson(
              json['education_level'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileDetailModelToJson(
        _$_ProfileDetailModel instance) =>
    <String, dynamic>{
      'short_info': instance.shortInfo,
      'experience': instance.experience,
      'address': instance.address,
      'skills': instance.skills,
      'geolocation': instance.geolocation?.toJson(),
      'city': instance.city?.toJson(),
      'education_level': instance.educationLevel?.toJson(),
    };
