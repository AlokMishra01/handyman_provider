// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_save_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartSaveModel _$$_CartSaveModelFromJson(Map<String, dynamic> json) =>
    _$_CartSaveModel(
      carts: (json['carts'] as List<dynamic>?)
              ?.map((e) => CartModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CartSaveModelToJson(_$_CartSaveModel instance) =>
    <String, dynamic>{
      'carts': instance.carts.map((e) => e.toJson()).toList(),
    };
