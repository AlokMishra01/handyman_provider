// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      name: json['name'] as String? ?? '',
      mobile: json['mobile'] as String? ?? '',
      latitude: json['latitude'] as String? ?? '',
      longitude: json['longitude'] as String? ?? '',
      state: json['state'] as int? ?? 0,
      city: json['city'] as int? ?? 0,
      datetime: json['datetime'] as String? ?? '',
      address: json['address'] as String? ?? '',
      payment: json['payment'] as String? ?? '',
      bankDoc: json['bankDoc'] as String? ?? '',
      questionfiles: (json['questionfiles'] as List<dynamic>?)
              ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'state': instance.state,
      'city': instance.city,
      'datetime': instance.datetime,
      'address': instance.address,
      'payment': instance.payment,
      'bankDoc': instance.bankDoc,
      'questionfiles': instance.questionfiles,
      'services': instance.services,
    };

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      file: json['file'] as String? ?? '',
      serviceId: json['serviceId'] as int? ?? '',
      questionId: json['questionId'] as int? ?? 0,
      type: json['type'] as int? ?? 0,
      answer: json['answer'] as String? ?? '',
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'file': instance.file,
      'serviceId': instance.serviceId,
      'questionId': instance.questionId,
      'type': instance.type,
      'answer': instance.answer,
    };

_$_Service _$$_ServiceFromJson(Map<String, dynamic> json) => _$_Service(
      id: json['id'] as int? ?? 0,
      quantity: json['quantity'] as int? ?? 0,
      type: json['type'] as int? ?? 0,
      psid: json['psid'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      discount: json['discount'] as int? ?? 0,
      price: json['price'] as int? ?? 0,
      question: (json['question'] as List<dynamic>?)
              ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'type': instance.type,
      'psid': instance.psid,
      'title': instance.title,
      'discount': instance.discount,
      'price': instance.price,
      'question': instance.question,
    };
