// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailModel _$OrderDetailModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailModel {
  bool get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  List<OrderModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailModelCopyWith<OrderDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailModelCopyWith<$Res> {
  factory $OrderDetailModelCopyWith(
          OrderDetailModel value, $Res Function(OrderDetailModel) then) =
      _$OrderDetailModelCopyWithImpl<$Res, OrderDetailModel>;
  @useResult
  $Res call({bool status, String msg, List<OrderModel> data});
}

/// @nodoc
class _$OrderDetailModelCopyWithImpl<$Res, $Val extends OrderDetailModel>
    implements $OrderDetailModelCopyWith<$Res> {
  _$OrderDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderDetailModelCopyWith<$Res>
    implements $OrderDetailModelCopyWith<$Res> {
  factory _$$_OrderDetailModelCopyWith(
          _$_OrderDetailModel value, $Res Function(_$_OrderDetailModel) then) =
      __$$_OrderDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String msg, List<OrderModel> data});
}

/// @nodoc
class __$$_OrderDetailModelCopyWithImpl<$Res>
    extends _$OrderDetailModelCopyWithImpl<$Res, _$_OrderDetailModel>
    implements _$$_OrderDetailModelCopyWith<$Res> {
  __$$_OrderDetailModelCopyWithImpl(
      _$_OrderDetailModel _value, $Res Function(_$_OrderDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$_OrderDetailModel(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_OrderDetailModel implements _OrderDetailModel {
  const _$_OrderDetailModel(
      {required this.status,
      required this.msg,
      required final List<OrderModel> data})
      : _data = data;

  factory _$_OrderDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailModelFromJson(json);

  @override
  final bool status;
  @override
  final String msg;
  final List<OrderModel> _data;
  @override
  List<OrderModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OrderDetailModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, msg, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailModelCopyWith<_$_OrderDetailModel> get copyWith =>
      __$$_OrderDetailModelCopyWithImpl<_$_OrderDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailModelToJson(
      this,
    );
  }
}

abstract class _OrderDetailModel implements OrderDetailModel {
  const factory _OrderDetailModel(
      {required final bool status,
      required final String msg,
      required final List<OrderModel> data}) = _$_OrderDetailModel;

  factory _OrderDetailModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailModel.fromJson;

  @override
  bool get status;
  @override
  String get msg;
  @override
  List<OrderModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailModelCopyWith<_$_OrderDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  String get workStatus => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get taxAmount => throw _privateConstructorUsedError;
  String get discountAmount => throw _privateConstructorUsedError;
  Professional get professional => throw _privateConstructorUsedError;
  List<Answer> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String paymentStatus,
      String workStatus,
      int quantity,
      String amount,
      String taxAmount,
      String discountAmount,
      Professional professional,
      List<Answer> answers});

  $ProfessionalCopyWith<$Res> get professional;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? paymentStatus = null,
    Object? workStatus = null,
    Object? quantity = null,
    Object? amount = null,
    Object? taxAmount = null,
    Object? discountAmount = null,
    Object? professional = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      workStatus: null == workStatus
          ? _value.workStatus
          : workStatus // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as String,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as String,
      professional: null == professional
          ? _value.professional
          : professional // ignore: cast_nullable_to_non_nullable
              as Professional,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfessionalCopyWith<$Res> get professional {
    return $ProfessionalCopyWith<$Res>(_value.professional, (value) {
      return _then(_value.copyWith(professional: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String paymentStatus,
      String workStatus,
      int quantity,
      String amount,
      String taxAmount,
      String discountAmount,
      Professional professional,
      List<Answer> answers});

  @override
  $ProfessionalCopyWith<$Res> get professional;
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? paymentStatus = null,
    Object? workStatus = null,
    Object? quantity = null,
    Object? amount = null,
    Object? taxAmount = null,
    Object? discountAmount = null,
    Object? professional = null,
    Object? answers = null,
  }) {
    return _then(_$_OrderModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      workStatus: null == workStatus
          ? _value.workStatus
          : workStatus // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as String,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as String,
      professional: null == professional
          ? _value.professional
          : professional // ignore: cast_nullable_to_non_nullable
              as Professional,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_OrderModel implements _OrderModel {
  const _$_OrderModel(
      {required this.id,
      required this.name,
      required this.paymentStatus,
      required this.workStatus,
      required this.quantity,
      required this.amount,
      required this.taxAmount,
      required this.discountAmount,
      required this.professional,
      required final List<Answer> answers})
      : _answers = answers;

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String paymentStatus;
  @override
  final String workStatus;
  @override
  final int quantity;
  @override
  final String amount;
  @override
  final String taxAmount;
  @override
  final String discountAmount;
  @override
  final Professional professional;
  final List<Answer> _answers;
  @override
  List<Answer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'OrderModel(id: $id, name: $name, paymentStatus: $paymentStatus, workStatus: $workStatus, quantity: $quantity, amount: $amount, taxAmount: $taxAmount, discountAmount: $discountAmount, professional: $professional, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.workStatus, workStatus) ||
                other.workStatus == workStatus) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.professional, professional) ||
                other.professional == professional) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      paymentStatus,
      workStatus,
      quantity,
      amount,
      taxAmount,
      discountAmount,
      professional,
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {required final int id,
      required final String name,
      required final String paymentStatus,
      required final String workStatus,
      required final int quantity,
      required final String amount,
      required final String taxAmount,
      required final String discountAmount,
      required final Professional professional,
      required final List<Answer> answers}) = _$_OrderModel;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get paymentStatus;
  @override
  String get workStatus;
  @override
  int get quantity;
  @override
  String get amount;
  @override
  String get taxAmount;
  @override
  String get discountAmount;
  @override
  Professional get professional;
  @override
  List<Answer> get answers;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  int get id => throw _privateConstructorUsedError;
  int get orderServiceId => throw _privateConstructorUsedError;
  int get consumerId => throw _privateConstructorUsedError;
  int get serviceQuestionId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call(
      {int id,
      int orderServiceId,
      int consumerId,
      int serviceQuestionId,
      String type,
      String answer,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res, $Val extends Answer>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderServiceId = null,
    Object? consumerId = null,
    Object? serviceQuestionId = null,
    Object? type = null,
    Object? answer = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderServiceId: null == orderServiceId
          ? _value.orderServiceId
          : orderServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      consumerId: null == consumerId
          ? _value.consumerId
          : consumerId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceQuestionId: null == serviceQuestionId
          ? _value.serviceQuestionId
          : serviceQuestionId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$_AnswerCopyWith(_$_Answer value, $Res Function(_$_Answer) then) =
      __$$_AnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int orderServiceId,
      int consumerId,
      int serviceQuestionId,
      String type,
      String answer,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_AnswerCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$_Answer>
    implements _$$_AnswerCopyWith<$Res> {
  __$$_AnswerCopyWithImpl(_$_Answer _value, $Res Function(_$_Answer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderServiceId = null,
    Object? consumerId = null,
    Object? serviceQuestionId = null,
    Object? type = null,
    Object? answer = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_Answer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderServiceId: null == orderServiceId
          ? _value.orderServiceId
          : orderServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      consumerId: null == consumerId
          ? _value.consumerId
          : consumerId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceQuestionId: null == serviceQuestionId
          ? _value.serviceQuestionId
          : serviceQuestionId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Answer implements _Answer {
  const _$_Answer(
      {required this.id,
      required this.orderServiceId,
      required this.consumerId,
      required this.serviceQuestionId,
      required this.type,
      required this.answer,
      required this.createdAt,
      required this.updatedAt});

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFromJson(json);

  @override
  final int id;
  @override
  final int orderServiceId;
  @override
  final int consumerId;
  @override
  final int serviceQuestionId;
  @override
  final String type;
  @override
  final String answer;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Answer(id: $id, orderServiceId: $orderServiceId, consumerId: $consumerId, serviceQuestionId: $serviceQuestionId, type: $type, answer: $answer, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Answer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderServiceId, orderServiceId) ||
                other.orderServiceId == orderServiceId) &&
            (identical(other.consumerId, consumerId) ||
                other.consumerId == consumerId) &&
            (identical(other.serviceQuestionId, serviceQuestionId) ||
                other.serviceQuestionId == serviceQuestionId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderServiceId, consumerId,
      serviceQuestionId, type, answer, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      __$$_AnswerCopyWithImpl<_$_Answer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerToJson(
      this,
    );
  }
}

abstract class _Answer implements Answer {
  const factory _Answer(
      {required final int id,
      required final int orderServiceId,
      required final int consumerId,
      required final int serviceQuestionId,
      required final String type,
      required final String answer,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_Answer;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$_Answer.fromJson;

  @override
  int get id;
  @override
  int get orderServiceId;
  @override
  int get consumerId;
  @override
  int get serviceQuestionId;
  @override
  String get type;
  @override
  String get answer;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      throw _privateConstructorUsedError;
}

Professional _$ProfessionalFromJson(Map<String, dynamic> json) {
  return _Professional.fromJson(json);
}

/// @nodoc
mixin _$Professional {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfessionalCopyWith<Professional> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessionalCopyWith<$Res> {
  factory $ProfessionalCopyWith(
          Professional value, $Res Function(Professional) then) =
      _$ProfessionalCopyWithImpl<$Res, Professional>;
  @useResult
  $Res call({int id, String name, String profileImage});
}

/// @nodoc
class _$ProfessionalCopyWithImpl<$Res, $Val extends Professional>
    implements $ProfessionalCopyWith<$Res> {
  _$ProfessionalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profileImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfessionalCopyWith<$Res>
    implements $ProfessionalCopyWith<$Res> {
  factory _$$_ProfessionalCopyWith(
          _$_Professional value, $Res Function(_$_Professional) then) =
      __$$_ProfessionalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String profileImage});
}

/// @nodoc
class __$$_ProfessionalCopyWithImpl<$Res>
    extends _$ProfessionalCopyWithImpl<$Res, _$_Professional>
    implements _$$_ProfessionalCopyWith<$Res> {
  __$$_ProfessionalCopyWithImpl(
      _$_Professional _value, $Res Function(_$_Professional) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profileImage = null,
  }) {
    return _then(_$_Professional(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Professional implements _Professional {
  const _$_Professional(
      {required this.id, required this.name, required this.profileImage});

  factory _$_Professional.fromJson(Map<String, dynamic> json) =>
      _$$_ProfessionalFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String profileImage;

  @override
  String toString() {
    return 'Professional(id: $id, name: $name, profileImage: $profileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Professional &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfessionalCopyWith<_$_Professional> get copyWith =>
      __$$_ProfessionalCopyWithImpl<_$_Professional>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfessionalToJson(
      this,
    );
  }
}

abstract class _Professional implements Professional {
  const factory _Professional(
      {required final int id,
      required final String name,
      required final String profileImage}) = _$_Professional;

  factory _Professional.fromJson(Map<String, dynamic> json) =
      _$_Professional.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$_ProfessionalCopyWith<_$_Professional> get copyWith =>
      throw _privateConstructorUsedError;
}
