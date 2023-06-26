// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderHistoryModel _$$_OrderHistoryModelFromJson(Map<String, dynamic> json) =>
    _$_OrderHistoryModel(
      status: json['status'] as bool,
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => OrderHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderHistoryModelToJson(
        _$_OrderHistoryModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$_OrderHistory _$$_OrderHistoryFromJson(Map<String, dynamic> json) =>
    _$_OrderHistory(
      id: json['id'] as int,
      action: json['action'] as String,
      description: json['description'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$_OrderHistoryToJson(_$_OrderHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': instance.action,
      'description': instance.description,
      'created_at': instance.createdAt,
    };
