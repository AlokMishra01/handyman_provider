// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_balance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyBalanceModel _$$_MyBalanceModelFromJson(Map<String, dynamic> json) =>
    _$_MyBalanceModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => BalanceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MyBalanceModelToJson(_$_MyBalanceModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'links': instance.links?.toJson(),
      'meta': instance.meta?.toJson(),
    };

_$_BalanceModel _$$_BalanceModelFromJson(Map<String, dynamic> json) =>
    _$_BalanceModel(
      transactionId: json['transaction_id'] as String? ?? '',
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      currency: json['currency'] as String? ?? '',
      type: json['type'] as String? ?? '',
      amount: json['amount'] as String? ?? '',
      voucher: json['voucher'] as String? ?? '',
      status: json['status'] as String? ?? '',
      remark: json['remark'] as String? ?? '',
    );

Map<String, dynamic> _$$_BalanceModelToJson(_$_BalanceModel instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'date': instance.date?.toIso8601String(),
      'currency': instance.currency,
      'type': instance.type,
      'amount': instance.amount,
      'voucher': instance.voucher,
      'status': instance.status,
      'remark': instance.remark,
    };
