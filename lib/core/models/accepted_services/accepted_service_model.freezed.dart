// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accepted_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AcceptedServiceModel _$AcceptedServiceModelFromJson(Map<String, dynamic> json) {
  return _AcceptedServiceModel.fromJson(json);
}

/// @nodoc
mixin _$AcceptedServiceModel {
  List<AcceptedServiceData> get data => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcceptedServiceModelCopyWith<AcceptedServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptedServiceModelCopyWith<$Res> {
  factory $AcceptedServiceModelCopyWith(AcceptedServiceModel value,
          $Res Function(AcceptedServiceModel) then) =
      _$AcceptedServiceModelCopyWithImpl<$Res, AcceptedServiceModel>;
  @useResult
  $Res call({List<AcceptedServiceData> data, Links? links, Meta? meta});

  $LinksCopyWith<$Res>? get links;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$AcceptedServiceModelCopyWithImpl<$Res,
        $Val extends AcceptedServiceModel>
    implements $AcceptedServiceModelCopyWith<$Res> {
  _$AcceptedServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AcceptedServiceData>,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AcceptedServiceModelCopyWith<$Res>
    implements $AcceptedServiceModelCopyWith<$Res> {
  factory _$$_AcceptedServiceModelCopyWith(_$_AcceptedServiceModel value,
          $Res Function(_$_AcceptedServiceModel) then) =
      __$$_AcceptedServiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AcceptedServiceData> data, Links? links, Meta? meta});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_AcceptedServiceModelCopyWithImpl<$Res>
    extends _$AcceptedServiceModelCopyWithImpl<$Res, _$_AcceptedServiceModel>
    implements _$$_AcceptedServiceModelCopyWith<$Res> {
  __$$_AcceptedServiceModelCopyWithImpl(_$_AcceptedServiceModel _value,
      $Res Function(_$_AcceptedServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_AcceptedServiceModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AcceptedServiceData>,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_AcceptedServiceModel implements _AcceptedServiceModel {
  const _$_AcceptedServiceModel(
      {final List<AcceptedServiceData> data = const [], this.links, this.meta})
      : _data = data;

  factory _$_AcceptedServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_AcceptedServiceModelFromJson(json);

  final List<AcceptedServiceData> _data;
  @override
  @JsonKey()
  List<AcceptedServiceData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Links? links;
  @override
  final Meta? meta;

  @override
  String toString() {
    return 'AcceptedServiceModel(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptedServiceModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), links, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptedServiceModelCopyWith<_$_AcceptedServiceModel> get copyWith =>
      __$$_AcceptedServiceModelCopyWithImpl<_$_AcceptedServiceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AcceptedServiceModelToJson(
      this,
    );
  }
}

abstract class _AcceptedServiceModel implements AcceptedServiceModel {
  const factory _AcceptedServiceModel(
      {final List<AcceptedServiceData> data,
      final Links? links,
      final Meta? meta}) = _$_AcceptedServiceModel;

  factory _AcceptedServiceModel.fromJson(Map<String, dynamic> json) =
      _$_AcceptedServiceModel.fromJson;

  @override
  List<AcceptedServiceData> get data;
  @override
  Links? get links;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_AcceptedServiceModelCopyWith<_$_AcceptedServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AcceptedServiceData _$AcceptedServiceDataFromJson(Map<String, dynamic> json) {
  return _AcceptedServiceData.fromJson(json);
}

/// @nodoc
mixin _$AcceptedServiceData {
  int get orderId => throw _privateConstructorUsedError;
  int get serviceId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get refNo => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get taxAmount => throw _privateConstructorUsedError;
  String get discountAmount => throw _privateConstructorUsedError;
  String get payment => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  String get orderStatus => throw _privateConstructorUsedError;
  String get serviceStatus => throw _privateConstructorUsedError;
  DateTime? get serviceDate => throw _privateConstructorUsedError;
  OrderAddress? get orderAddress => throw _privateConstructorUsedError;
  List<OrderHistory> get orderHistory => throw _privateConstructorUsedError;
  List<Answer> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcceptedServiceDataCopyWith<AcceptedServiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptedServiceDataCopyWith<$Res> {
  factory $AcceptedServiceDataCopyWith(
          AcceptedServiceData value, $Res Function(AcceptedServiceData) then) =
      _$AcceptedServiceDataCopyWithImpl<$Res, AcceptedServiceData>;
  @useResult
  $Res call(
      {int orderId,
      int serviceId,
      String name,
      int refNo,
      int quantity,
      String amount,
      String taxAmount,
      String discountAmount,
      String payment,
      String paymentStatus,
      String orderStatus,
      String serviceStatus,
      DateTime? serviceDate,
      OrderAddress? orderAddress,
      List<OrderHistory> orderHistory,
      List<Answer> answers});

  $OrderAddressCopyWith<$Res>? get orderAddress;
}

/// @nodoc
class _$AcceptedServiceDataCopyWithImpl<$Res, $Val extends AcceptedServiceData>
    implements $AcceptedServiceDataCopyWith<$Res> {
  _$AcceptedServiceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? serviceId = null,
    Object? name = null,
    Object? refNo = null,
    Object? quantity = null,
    Object? amount = null,
    Object? taxAmount = null,
    Object? discountAmount = null,
    Object? payment = null,
    Object? paymentStatus = null,
    Object? orderStatus = null,
    Object? serviceStatus = null,
    Object? serviceDate = freezed,
    Object? orderAddress = freezed,
    Object? orderHistory = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      refNo: null == refNo
          ? _value.refNo
          : refNo // ignore: cast_nullable_to_non_nullable
              as int,
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
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      serviceStatus: null == serviceStatus
          ? _value.serviceStatus
          : serviceStatus // ignore: cast_nullable_to_non_nullable
              as String,
      serviceDate: freezed == serviceDate
          ? _value.serviceDate
          : serviceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderAddress: freezed == orderAddress
          ? _value.orderAddress
          : orderAddress // ignore: cast_nullable_to_non_nullable
              as OrderAddress?,
      orderHistory: null == orderHistory
          ? _value.orderHistory
          : orderHistory // ignore: cast_nullable_to_non_nullable
              as List<OrderHistory>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderAddressCopyWith<$Res>? get orderAddress {
    if (_value.orderAddress == null) {
      return null;
    }

    return $OrderAddressCopyWith<$Res>(_value.orderAddress!, (value) {
      return _then(_value.copyWith(orderAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AcceptedServiceDataCopyWith<$Res>
    implements $AcceptedServiceDataCopyWith<$Res> {
  factory _$$_AcceptedServiceDataCopyWith(_$_AcceptedServiceData value,
          $Res Function(_$_AcceptedServiceData) then) =
      __$$_AcceptedServiceDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int orderId,
      int serviceId,
      String name,
      int refNo,
      int quantity,
      String amount,
      String taxAmount,
      String discountAmount,
      String payment,
      String paymentStatus,
      String orderStatus,
      String serviceStatus,
      DateTime? serviceDate,
      OrderAddress? orderAddress,
      List<OrderHistory> orderHistory,
      List<Answer> answers});

  @override
  $OrderAddressCopyWith<$Res>? get orderAddress;
}

/// @nodoc
class __$$_AcceptedServiceDataCopyWithImpl<$Res>
    extends _$AcceptedServiceDataCopyWithImpl<$Res, _$_AcceptedServiceData>
    implements _$$_AcceptedServiceDataCopyWith<$Res> {
  __$$_AcceptedServiceDataCopyWithImpl(_$_AcceptedServiceData _value,
      $Res Function(_$_AcceptedServiceData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? serviceId = null,
    Object? name = null,
    Object? refNo = null,
    Object? quantity = null,
    Object? amount = null,
    Object? taxAmount = null,
    Object? discountAmount = null,
    Object? payment = null,
    Object? paymentStatus = null,
    Object? orderStatus = null,
    Object? serviceStatus = null,
    Object? serviceDate = freezed,
    Object? orderAddress = freezed,
    Object? orderHistory = null,
    Object? answers = null,
  }) {
    return _then(_$_AcceptedServiceData(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      refNo: null == refNo
          ? _value.refNo
          : refNo // ignore: cast_nullable_to_non_nullable
              as int,
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
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      serviceStatus: null == serviceStatus
          ? _value.serviceStatus
          : serviceStatus // ignore: cast_nullable_to_non_nullable
              as String,
      serviceDate: freezed == serviceDate
          ? _value.serviceDate
          : serviceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderAddress: freezed == orderAddress
          ? _value.orderAddress
          : orderAddress // ignore: cast_nullable_to_non_nullable
              as OrderAddress?,
      orderHistory: null == orderHistory
          ? _value._orderHistory
          : orderHistory // ignore: cast_nullable_to_non_nullable
              as List<OrderHistory>,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_AcceptedServiceData implements _AcceptedServiceData {
  const _$_AcceptedServiceData(
      {this.orderId = -1,
      this.serviceId = -1,
      this.name = '',
      this.refNo = -1,
      this.quantity = 0,
      this.amount = '',
      this.taxAmount = '',
      this.discountAmount = '',
      this.payment = '',
      this.paymentStatus = '',
      this.orderStatus = '',
      this.serviceStatus = '',
      this.serviceDate,
      this.orderAddress,
      final List<OrderHistory> orderHistory = const [],
      final List<Answer> answers = const []})
      : _orderHistory = orderHistory,
        _answers = answers;

  factory _$_AcceptedServiceData.fromJson(Map<String, dynamic> json) =>
      _$$_AcceptedServiceDataFromJson(json);

  @override
  @JsonKey()
  final int orderId;
  @override
  @JsonKey()
  final int serviceId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int refNo;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final String amount;
  @override
  @JsonKey()
  final String taxAmount;
  @override
  @JsonKey()
  final String discountAmount;
  @override
  @JsonKey()
  final String payment;
  @override
  @JsonKey()
  final String paymentStatus;
  @override
  @JsonKey()
  final String orderStatus;
  @override
  @JsonKey()
  final String serviceStatus;
  @override
  final DateTime? serviceDate;
  @override
  final OrderAddress? orderAddress;
  final List<OrderHistory> _orderHistory;
  @override
  @JsonKey()
  List<OrderHistory> get orderHistory {
    if (_orderHistory is EqualUnmodifiableListView) return _orderHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderHistory);
  }

  final List<Answer> _answers;
  @override
  @JsonKey()
  List<Answer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'AcceptedServiceData(orderId: $orderId, serviceId: $serviceId, name: $name, refNo: $refNo, quantity: $quantity, amount: $amount, taxAmount: $taxAmount, discountAmount: $discountAmount, payment: $payment, paymentStatus: $paymentStatus, orderStatus: $orderStatus, serviceStatus: $serviceStatus, serviceDate: $serviceDate, orderAddress: $orderAddress, orderHistory: $orderHistory, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptedServiceData &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.refNo, refNo) || other.refNo == refNo) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.serviceStatus, serviceStatus) ||
                other.serviceStatus == serviceStatus) &&
            (identical(other.serviceDate, serviceDate) ||
                other.serviceDate == serviceDate) &&
            (identical(other.orderAddress, orderAddress) ||
                other.orderAddress == orderAddress) &&
            const DeepCollectionEquality()
                .equals(other._orderHistory, _orderHistory) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      serviceId,
      name,
      refNo,
      quantity,
      amount,
      taxAmount,
      discountAmount,
      payment,
      paymentStatus,
      orderStatus,
      serviceStatus,
      serviceDate,
      orderAddress,
      const DeepCollectionEquality().hash(_orderHistory),
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptedServiceDataCopyWith<_$_AcceptedServiceData> get copyWith =>
      __$$_AcceptedServiceDataCopyWithImpl<_$_AcceptedServiceData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AcceptedServiceDataToJson(
      this,
    );
  }
}

abstract class _AcceptedServiceData implements AcceptedServiceData {
  const factory _AcceptedServiceData(
      {final int orderId,
      final int serviceId,
      final String name,
      final int refNo,
      final int quantity,
      final String amount,
      final String taxAmount,
      final String discountAmount,
      final String payment,
      final String paymentStatus,
      final String orderStatus,
      final String serviceStatus,
      final DateTime? serviceDate,
      final OrderAddress? orderAddress,
      final List<OrderHistory> orderHistory,
      final List<Answer> answers}) = _$_AcceptedServiceData;

  factory _AcceptedServiceData.fromJson(Map<String, dynamic> json) =
      _$_AcceptedServiceData.fromJson;

  @override
  int get orderId;
  @override
  int get serviceId;
  @override
  String get name;
  @override
  int get refNo;
  @override
  int get quantity;
  @override
  String get amount;
  @override
  String get taxAmount;
  @override
  String get discountAmount;
  @override
  String get payment;
  @override
  String get paymentStatus;
  @override
  String get orderStatus;
  @override
  String get serviceStatus;
  @override
  DateTime? get serviceDate;
  @override
  OrderAddress? get orderAddress;
  @override
  List<OrderHistory> get orderHistory;
  @override
  List<Answer> get answers;
  @override
  @JsonKey(ignore: true)
  _$$_AcceptedServiceDataCopyWith<_$_AcceptedServiceData> get copyWith =>
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
  Map<String, dynamic> get question => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      Map<String, dynamic> question,
      DateTime? createdAt,
      DateTime? updatedAt});
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
    Object? question = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      Map<String, dynamic> question,
      DateTime? createdAt,
      DateTime? updatedAt});
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
    Object? question = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      question: null == question
          ? _value._question
          : question // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Answer extends _Answer {
  const _$_Answer(
      {this.id = -1,
      this.orderServiceId = -1,
      this.consumerId = -1,
      this.serviceQuestionId = -1,
      this.type = '',
      this.answer = '',
      final Map<String, dynamic> question = const {},
      this.createdAt,
      this.updatedAt})
      : _question = question,
        super._();

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int orderServiceId;
  @override
  @JsonKey()
  final int consumerId;
  @override
  @JsonKey()
  final int serviceQuestionId;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String answer;
  final Map<String, dynamic> _question;
  @override
  @JsonKey()
  Map<String, dynamic> get question {
    if (_question is EqualUnmodifiableMapView) return _question;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_question);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Answer(id: $id, orderServiceId: $orderServiceId, consumerId: $consumerId, serviceQuestionId: $serviceQuestionId, type: $type, answer: $answer, question: $question, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            const DeepCollectionEquality().equals(other._question, _question) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderServiceId,
      consumerId,
      serviceQuestionId,
      type,
      answer,
      const DeepCollectionEquality().hash(_question),
      createdAt,
      updatedAt);

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

abstract class _Answer extends Answer {
  const factory _Answer(
      {final int id,
      final int orderServiceId,
      final int consumerId,
      final int serviceQuestionId,
      final String type,
      final String answer,
      final Map<String, dynamic> question,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Answer;
  const _Answer._() : super._();

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
  Map<String, dynamic> get question;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderAddress _$OrderAddressFromJson(Map<String, dynamic> json) {
  return _OrderAddress.fromJson(json);
}

/// @nodoc
mixin _$OrderAddress {
  String get orderName => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderAddressCopyWith<OrderAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderAddressCopyWith<$Res> {
  factory $OrderAddressCopyWith(
          OrderAddress value, $Res Function(OrderAddress) then) =
      _$OrderAddressCopyWithImpl<$Res, OrderAddress>;
  @useResult
  $Res call(
      {String orderName,
      String mobile,
      String address,
      double latitude,
      double longitude});
}

/// @nodoc
class _$OrderAddressCopyWithImpl<$Res, $Val extends OrderAddress>
    implements $OrderAddressCopyWith<$Res> {
  _$OrderAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderName = null,
    Object? mobile = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      orderName: null == orderName
          ? _value.orderName
          : orderName // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderAddressCopyWith<$Res>
    implements $OrderAddressCopyWith<$Res> {
  factory _$$_OrderAddressCopyWith(
          _$_OrderAddress value, $Res Function(_$_OrderAddress) then) =
      __$$_OrderAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderName,
      String mobile,
      String address,
      double latitude,
      double longitude});
}

/// @nodoc
class __$$_OrderAddressCopyWithImpl<$Res>
    extends _$OrderAddressCopyWithImpl<$Res, _$_OrderAddress>
    implements _$$_OrderAddressCopyWith<$Res> {
  __$$_OrderAddressCopyWithImpl(
      _$_OrderAddress _value, $Res Function(_$_OrderAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderName = null,
    Object? mobile = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_OrderAddress(
      orderName: null == orderName
          ? _value.orderName
          : orderName // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_OrderAddress implements _OrderAddress {
  const _$_OrderAddress(
      {this.orderName = '',
      this.mobile = '',
      this.address = '',
      this.latitude = 0.0,
      this.longitude = 0.0});

  factory _$_OrderAddress.fromJson(Map<String, dynamic> json) =>
      _$$_OrderAddressFromJson(json);

  @override
  @JsonKey()
  final String orderName;
  @override
  @JsonKey()
  final String mobile;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;

  @override
  String toString() {
    return 'OrderAddress(orderName: $orderName, mobile: $mobile, address: $address, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderAddress &&
            (identical(other.orderName, orderName) ||
                other.orderName == orderName) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderName, mobile, address, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderAddressCopyWith<_$_OrderAddress> get copyWith =>
      __$$_OrderAddressCopyWithImpl<_$_OrderAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderAddressToJson(
      this,
    );
  }
}

abstract class _OrderAddress implements OrderAddress {
  const factory _OrderAddress(
      {final String orderName,
      final String mobile,
      final String address,
      final double latitude,
      final double longitude}) = _$_OrderAddress;

  factory _OrderAddress.fromJson(Map<String, dynamic> json) =
      _$_OrderAddress.fromJson;

  @override
  String get orderName;
  @override
  String get mobile;
  @override
  String get address;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_OrderAddressCopyWith<_$_OrderAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderHistory _$OrderHistoryFromJson(Map<String, dynamic> json) {
  return _OrderHistory.fromJson(json);
}

/// @nodoc
mixin _$OrderHistory {
  int get id => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryCopyWith<OrderHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryCopyWith<$Res> {
  factory $OrderHistoryCopyWith(
          OrderHistory value, $Res Function(OrderHistory) then) =
      _$OrderHistoryCopyWithImpl<$Res, OrderHistory>;
  @useResult
  $Res call({int id, String action, String description, String createdAt});
}

/// @nodoc
class _$OrderHistoryCopyWithImpl<$Res, $Val extends OrderHistory>
    implements $OrderHistoryCopyWith<$Res> {
  _$OrderHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? action = null,
    Object? description = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderHistoryCopyWith<$Res>
    implements $OrderHistoryCopyWith<$Res> {
  factory _$$_OrderHistoryCopyWith(
          _$_OrderHistory value, $Res Function(_$_OrderHistory) then) =
      __$$_OrderHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String action, String description, String createdAt});
}

/// @nodoc
class __$$_OrderHistoryCopyWithImpl<$Res>
    extends _$OrderHistoryCopyWithImpl<$Res, _$_OrderHistory>
    implements _$$_OrderHistoryCopyWith<$Res> {
  __$$_OrderHistoryCopyWithImpl(
      _$_OrderHistory _value, $Res Function(_$_OrderHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? action = null,
    Object? description = null,
    Object? createdAt = null,
  }) {
    return _then(_$_OrderHistory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_OrderHistory implements _OrderHistory {
  const _$_OrderHistory(
      {this.id = -1,
      this.action = '',
      this.description = '',
      this.createdAt = ''});

  factory _$_OrderHistory.fromJson(Map<String, dynamic> json) =>
      _$$_OrderHistoryFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String action;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String createdAt;

  @override
  String toString() {
    return 'OrderHistory(id: $id, action: $action, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderHistory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, action, description, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderHistoryCopyWith<_$_OrderHistory> get copyWith =>
      __$$_OrderHistoryCopyWithImpl<_$_OrderHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderHistoryToJson(
      this,
    );
  }
}

abstract class _OrderHistory implements OrderHistory {
  const factory _OrderHistory(
      {final int id,
      final String action,
      final String description,
      final String createdAt}) = _$_OrderHistory;

  factory _OrderHistory.fromJson(Map<String, dynamic> json) =
      _$_OrderHistory.fromJson;

  @override
  int get id;
  @override
  String get action;
  @override
  String get description;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_OrderHistoryCopyWith<_$_OrderHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  String get first => throw _privateConstructorUsedError;
  String get last => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call({String first, String last});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? last = null,
  }) {
    return _then(_value.copyWith(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$_LinksCopyWith(_$_Links value, $Res Function(_$_Links) then) =
      __$$_LinksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String first, String last});
}

/// @nodoc
class __$$_LinksCopyWithImpl<$Res> extends _$LinksCopyWithImpl<$Res, _$_Links>
    implements _$$_LinksCopyWith<$Res> {
  __$$_LinksCopyWithImpl(_$_Links _value, $Res Function(_$_Links) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? last = null,
  }) {
    return _then(_$_Links(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Links implements _Links {
  const _$_Links({this.first = '', this.last = ''});

  factory _$_Links.fromJson(Map<String, dynamic> json) =>
      _$$_LinksFromJson(json);

  @override
  @JsonKey()
  final String first;
  @override
  @JsonKey()
  final String last;

  @override
  String toString() {
    return 'Links(first: $first, last: $last)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Links &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, last);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinksCopyWith<_$_Links> get copyWith =>
      __$$_LinksCopyWithImpl<_$_Links>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinksToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  const factory _Links({final String first, final String last}) = _$_Links;

  factory _Links.fromJson(Map<String, dynamic> json) = _$_Links.fromJson;

  @override
  String get first;
  @override
  String get last;
  @override
  @JsonKey(ignore: true)
  _$$_LinksCopyWith<_$_Links> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  int get currentPage => throw _privateConstructorUsedError;
  int get from => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  List<Link> get links => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {int currentPage,
      int from,
      int lastPage,
      List<Link> links,
      String path,
      int perPage,
      int to,
      int total});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? from = null,
    Object? lastPage = null,
    Object? links = null,
    Object? path = null,
    Object? perPage = null,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$_MetaCopyWith(_$_Meta value, $Res Function(_$_Meta) then) =
      __$$_MetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      int from,
      int lastPage,
      List<Link> links,
      String path,
      int perPage,
      int to,
      int total});
}

/// @nodoc
class __$$_MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res, _$_Meta>
    implements _$$_MetaCopyWith<$Res> {
  __$$_MetaCopyWithImpl(_$_Meta _value, $Res Function(_$_Meta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? from = null,
    Object? lastPage = null,
    Object? links = null,
    Object? path = null,
    Object? perPage = null,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_$_Meta(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Meta implements _Meta {
  const _$_Meta(
      {this.currentPage = 0,
      this.from = 0,
      this.lastPage = 0,
      final List<Link> links = const [],
      this.path = '',
      this.perPage = 0,
      this.to = 0,
      this.total = 0})
      : _links = links;

  factory _$_Meta.fromJson(Map<String, dynamic> json) => _$$_MetaFromJson(json);

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int from;
  @override
  @JsonKey()
  final int lastPage;
  final List<Link> _links;
  @override
  @JsonKey()
  List<Link> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final int perPage;
  @override
  @JsonKey()
  final int to;
  @override
  @JsonKey()
  final int total;

  @override
  String toString() {
    return 'Meta(currentPage: $currentPage, from: $from, lastPage: $lastPage, links: $links, path: $path, perPage: $perPage, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meta &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, from, lastPage,
      const DeepCollectionEquality().hash(_links), path, perPage, to, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaCopyWith<_$_Meta> get copyWith =>
      __$$_MetaCopyWithImpl<_$_Meta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {final int currentPage,
      final int from,
      final int lastPage,
      final List<Link> links,
      final String path,
      final int perPage,
      final int to,
      final int total}) = _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;

  @override
  int get currentPage;
  @override
  int get from;
  @override
  int get lastPage;
  @override
  List<Link> get links;
  @override
  String get path;
  @override
  int get perPage;
  @override
  int get to;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_MetaCopyWith<_$_Meta> get copyWith => throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String get url => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String url, String label, bool active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinkCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$_LinkCopyWith(_$_Link value, $Res Function(_$_Link) then) =
      __$$_LinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String label, bool active});
}

/// @nodoc
class __$$_LinkCopyWithImpl<$Res> extends _$LinkCopyWithImpl<$Res, _$_Link>
    implements _$$_LinkCopyWith<$Res> {
  __$$_LinkCopyWithImpl(_$_Link _value, $Res Function(_$_Link) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_$_Link(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Link implements _Link {
  const _$_Link({this.url = '', this.label = '', this.active = false});

  factory _$_Link.fromJson(Map<String, dynamic> json) => _$$_LinkFromJson(json);

  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final bool active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Link &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkCopyWith<_$_Link> get copyWith =>
      __$$_LinkCopyWithImpl<_$_Link>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {final String url, final String label, final bool active}) = _$_Link;

  factory _Link.fromJson(Map<String, dynamic> json) = _$_Link.fromJson;

  @override
  String get url;
  @override
  String get label;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$_LinkCopyWith<_$_Link> get copyWith => throw _privateConstructorUsedError;
}
