// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      id: json['id'] as int? ?? 0,
      balance: json['balance'] as String? ?? '',
      name: json['name'] as String? ?? '',
      mobile: json['mobile'] as String? ?? '',
      email: json['email'] as String? ?? '',
      idNumber: json['id_number'] as String? ?? '',
      idCardThumb: json['id_card_thumb'] as String? ?? '',
      addPrice: json['add_price'] as int? ?? 0,
      verificationStatus: json['verification_status'] as bool? ?? false,
      emailVerificationStatus:
          json['email_verification_status'] as bool? ?? false,
      profileImage: json['profile_image'] as String? ?? '',
      offeredServices: (json['offered_services'] as List<dynamic>?)
              ?.map((e) => ServiceTypeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      detail: json['detail'] == null
          ? null
          : ProfileDetailModel.fromJson(json['detail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance,
      'name': instance.name,
      'mobile': instance.mobile,
      'email': instance.email,
      'id_number': instance.idNumber,
      'id_card_thumb': instance.idCardThumb,
      'add_price': instance.addPrice,
      'verification_status': instance.verificationStatus,
      'email_verification_status': instance.emailVerificationStatus,
      'profile_image': instance.profileImage,
      'offered_services':
          instance.offeredServices.map((e) => e.toJson()).toList(),
      'detail': instance.detail?.toJson(),
    };
