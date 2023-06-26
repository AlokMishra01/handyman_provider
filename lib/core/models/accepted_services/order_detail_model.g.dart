// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetailModel _$$_OrderDetailModelFromJson(Map<String, dynamic> json) =>
    _$_OrderDetailModel(
      status: json['status'] as bool,
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderDetailModelToJson(_$_OrderDetailModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as int,
      name: json['name'] as String,
      paymentStatus: json['payment_status'] as String,
      workStatus: json['work_status'] as String,
      quantity: json['quantity'] as int,
      amount: json['amount'] as String,
      taxAmount: json['tax_amount'] as String,
      discountAmount: json['discount_amount'] as String,
      professional:
          Professional.fromJson(json['professional'] as Map<String, dynamic>),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'payment_status': instance.paymentStatus,
      'work_status': instance.workStatus,
      'quantity': instance.quantity,
      'amount': instance.amount,
      'tax_amount': instance.taxAmount,
      'discount_amount': instance.discountAmount,
      'professional': instance.professional.toJson(),
      'answers': instance.answers.map((e) => e.toJson()).toList(),
    };

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      id: json['id'] as int,
      orderServiceId: json['order_service_id'] as int,
      consumerId: json['consumer_id'] as int,
      serviceQuestionId: json['service_question_id'] as int,
      type: json['type'] as String,
      answer: json['answer'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'id': instance.id,
      'order_service_id': instance.orderServiceId,
      'consumer_id': instance.consumerId,
      'service_question_id': instance.serviceQuestionId,
      'type': instance.type,
      'answer': instance.answer,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$_Professional _$$_ProfessionalFromJson(Map<String, dynamic> json) =>
    _$_Professional(
      id: json['id'] as int,
      name: json['name'] as String,
      profileImage: json['profile_image'] as String,
    );

Map<String, dynamic> _$$_ProfessionalToJson(_$_Professional instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_image': instance.profileImage,
    };
