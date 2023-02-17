// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accepted_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AcceptedServiceModel _$$_AcceptedServiceModelFromJson(
        Map<String, dynamic> json) =>
    _$_AcceptedServiceModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  AcceptedServiceData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AcceptedServiceModelToJson(
        _$_AcceptedServiceModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'links': instance.links?.toJson(),
      'meta': instance.meta?.toJson(),
    };

_$_AcceptedServiceData _$$_AcceptedServiceDataFromJson(
        Map<String, dynamic> json) =>
    _$_AcceptedServiceData(
      orderId: json['order_id'] as int? ?? -1,
      serviceId: json['service_id'] as int? ?? -1,
      name: json['name'] as String? ?? '',
      refNo: json['ref_no'] as int? ?? -1,
      quantity: json['quantity'] as int? ?? 0,
      amount: json['amount'] as String? ?? '',
      taxAmount: json['tax_amount'] as String? ?? '',
      discountAmount: json['discount_amount'] as String? ?? '',
      payment: json['payment'] as String? ?? '',
      paymentStatus: json['payment_status'] as String? ?? '',
      orderStatus: json['order_status'] as String? ?? '',
      serviceStatus: json['service_status'] as String? ?? '',
      serviceDate: json['service_date'] == null
          ? null
          : DateTime.parse(json['service_date'] as String),
      orderAddress: json['order_address'] == null
          ? null
          : OrderAddress.fromJson(
              json['order_address'] as Map<String, dynamic>),
      orderHistory: (json['order_history'] as List<dynamic>?)
              ?.map((e) => OrderHistory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      answers: (json['answers'] as List<dynamic>?)
              ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AcceptedServiceDataToJson(
        _$_AcceptedServiceData instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'service_id': instance.serviceId,
      'name': instance.name,
      'ref_no': instance.refNo,
      'quantity': instance.quantity,
      'amount': instance.amount,
      'tax_amount': instance.taxAmount,
      'discount_amount': instance.discountAmount,
      'payment': instance.payment,
      'payment_status': instance.paymentStatus,
      'order_status': instance.orderStatus,
      'service_status': instance.serviceStatus,
      'service_date': instance.serviceDate?.toIso8601String(),
      'order_address': instance.orderAddress?.toJson(),
      'order_history': instance.orderHistory.map((e) => e.toJson()).toList(),
      'answers': instance.answers.map((e) => e.toJson()).toList(),
    };

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      id: json['id'] as int? ?? -1,
      orderServiceId: json['order_service_id'] as int? ?? -1,
      consumerId: json['consumer_id'] as int? ?? -1,
      serviceQuestionId: json['service_question_id'] as int? ?? -1,
      type: json['type'] as String? ?? '',
      answer: json['answer'] as String? ?? '',
      question: json['question'] as Map<String, dynamic>? ?? const {},
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'id': instance.id,
      'order_service_id': instance.orderServiceId,
      'consumer_id': instance.consumerId,
      'service_question_id': instance.serviceQuestionId,
      'type': instance.type,
      'answer': instance.answer,
      'question': instance.question,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$_OrderAddress _$$_OrderAddressFromJson(Map<String, dynamic> json) =>
    _$_OrderAddress(
      orderName: json['order_name'] as String? ?? '',
      mobile: json['mobile'] as String? ?? '',
      address: json['address'] as String? ?? '',
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_OrderAddressToJson(_$_OrderAddress instance) =>
    <String, dynamic>{
      'order_name': instance.orderName,
      'mobile': instance.mobile,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$_OrderHistory _$$_OrderHistoryFromJson(Map<String, dynamic> json) =>
    _$_OrderHistory(
      id: json['id'] as int? ?? -1,
      action: json['action'] as String? ?? '',
      description: json['description'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderHistoryToJson(_$_OrderHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': instance.action,
      'description': instance.description,
      'created_at': instance.createdAt,
    };

_$_Links _$$_LinksFromJson(Map<String, dynamic> json) => _$_Links(
      first: json['first'] as String? ?? '',
      last: json['last'] as String? ?? '',
    );

Map<String, dynamic> _$$_LinksToJson(_$_Links instance) => <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      currentPage: json['current_page'] as int? ?? 0,
      from: json['from'] as int? ?? 0,
      lastPage: json['last_page'] as int? ?? 0,
      links: (json['links'] as List<dynamic>?)
              ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      path: json['path'] as String? ?? '',
      perPage: json['per_page'] as int? ?? 0,
      to: json['to'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'links': instance.links.map((e) => e.toJson()).toList(),
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };

_$_Link _$$_LinkFromJson(Map<String, dynamic> json) => _$_Link(
      url: json['url'] as String? ?? '',
      label: json['label'] as String? ?? '',
      active: json['active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LinkToJson(_$_Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
