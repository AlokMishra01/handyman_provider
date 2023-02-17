// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_income_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyIncomeModel _$$_MyIncomeModelFromJson(Map<String, dynamic> json) =>
    _$_MyIncomeModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => MyIncome.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MyIncomeModelToJson(_$_MyIncomeModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'links': instance.links?.toJson(),
      'meta': instance.meta?.toJson(),
    };

_$_MyIncome _$$_MyIncomeFromJson(Map<String, dynamic> json) => _$_MyIncome(
      serviceId: json['service_id'] as int? ?? -1,
      orderId: json['order_id'] as int? ?? -1,
      name: json['name'] as String? ?? '',
      amount: json['amount'] as String? ?? '',
      taxAmount: json['tax_amount'] as String? ?? '',
      discountAmount: json['discount_amount'] as String? ?? '',
      paymentStatus: json['payment_status'] as String? ?? '',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      paymentChannel: json['payment_channel'] as String? ?? '',
    );

Map<String, dynamic> _$$_MyIncomeToJson(_$_MyIncome instance) =>
    <String, dynamic>{
      'service_id': instance.serviceId,
      'order_id': instance.orderId,
      'name': instance.name,
      'amount': instance.amount,
      'tax_amount': instance.taxAmount,
      'discount_amount': instance.discountAmount,
      'payment_status': instance.paymentStatus,
      'created_at': instance.createdAt?.toIso8601String(),
      'payment_channel': instance.paymentChannel,
    };
