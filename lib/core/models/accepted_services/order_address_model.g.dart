// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderAddressModel _$$_OrderAddressModelFromJson(Map<String, dynamic> json) =>
    _$_OrderAddressModel(
      status: json['status'] as bool,
      msg: json['msg'] as String,
      data: OrderAddress.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderAddressModelToJson(
        _$_OrderAddressModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_$_OrderAddress _$$_OrderAddressFromJson(Map<String, dynamic> json) =>
    _$_OrderAddress(
      orderName: json['orderName'] as String,
      mobile: json['mobile'] as String,
      address: json['address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_OrderAddressToJson(_$_OrderAddress instance) =>
    <String, dynamic>{
      'orderName': instance.orderName,
      'mobile': instance.mobile,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
