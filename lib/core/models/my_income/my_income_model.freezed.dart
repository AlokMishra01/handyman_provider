// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_income_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyIncomeModel _$MyIncomeModelFromJson(Map<String, dynamic> json) {
  return _MyIncomeModel.fromJson(json);
}

/// @nodoc
mixin _$MyIncomeModel {
  List<MyIncome> get data => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyIncomeModelCopyWith<MyIncomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyIncomeModelCopyWith<$Res> {
  factory $MyIncomeModelCopyWith(
          MyIncomeModel value, $Res Function(MyIncomeModel) then) =
      _$MyIncomeModelCopyWithImpl<$Res, MyIncomeModel>;
  @useResult
  $Res call({List<MyIncome> data, Links? links, Meta? meta});

  $LinksCopyWith<$Res>? get links;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$MyIncomeModelCopyWithImpl<$Res, $Val extends MyIncomeModel>
    implements $MyIncomeModelCopyWith<$Res> {
  _$MyIncomeModelCopyWithImpl(this._value, this._then);

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
              as List<MyIncome>,
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
abstract class _$$_MyIncomeModelCopyWith<$Res>
    implements $MyIncomeModelCopyWith<$Res> {
  factory _$$_MyIncomeModelCopyWith(
          _$_MyIncomeModel value, $Res Function(_$_MyIncomeModel) then) =
      __$$_MyIncomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MyIncome> data, Links? links, Meta? meta});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_MyIncomeModelCopyWithImpl<$Res>
    extends _$MyIncomeModelCopyWithImpl<$Res, _$_MyIncomeModel>
    implements _$$_MyIncomeModelCopyWith<$Res> {
  __$$_MyIncomeModelCopyWithImpl(
      _$_MyIncomeModel _value, $Res Function(_$_MyIncomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_MyIncomeModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MyIncome>,
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
class _$_MyIncomeModel implements _MyIncomeModel {
  const _$_MyIncomeModel(
      {final List<MyIncome> data = const [], this.links, this.meta})
      : _data = data;

  factory _$_MyIncomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_MyIncomeModelFromJson(json);

  final List<MyIncome> _data;
  @override
  @JsonKey()
  List<MyIncome> get data {
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
    return 'MyIncomeModel(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyIncomeModel &&
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
  _$$_MyIncomeModelCopyWith<_$_MyIncomeModel> get copyWith =>
      __$$_MyIncomeModelCopyWithImpl<_$_MyIncomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyIncomeModelToJson(
      this,
    );
  }
}

abstract class _MyIncomeModel implements MyIncomeModel {
  const factory _MyIncomeModel(
      {final List<MyIncome> data,
      final Links? links,
      final Meta? meta}) = _$_MyIncomeModel;

  factory _MyIncomeModel.fromJson(Map<String, dynamic> json) =
      _$_MyIncomeModel.fromJson;

  @override
  List<MyIncome> get data;
  @override
  Links? get links;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_MyIncomeModelCopyWith<_$_MyIncomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MyIncome _$MyIncomeFromJson(Map<String, dynamic> json) {
  return _MyIncome.fromJson(json);
}

/// @nodoc
mixin _$MyIncome {
  int get serviceId => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get taxAmount => throw _privateConstructorUsedError;
  String get discountAmount => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get paymentChannel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyIncomeCopyWith<MyIncome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyIncomeCopyWith<$Res> {
  factory $MyIncomeCopyWith(MyIncome value, $Res Function(MyIncome) then) =
      _$MyIncomeCopyWithImpl<$Res, MyIncome>;
  @useResult
  $Res call(
      {int serviceId,
      int orderId,
      String name,
      String amount,
      String taxAmount,
      String discountAmount,
      String paymentStatus,
      DateTime? createdAt,
      String paymentChannel});
}

/// @nodoc
class _$MyIncomeCopyWithImpl<$Res, $Val extends MyIncome>
    implements $MyIncomeCopyWith<$Res> {
  _$MyIncomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = null,
    Object? orderId = null,
    Object? name = null,
    Object? amount = null,
    Object? taxAmount = null,
    Object? discountAmount = null,
    Object? paymentStatus = null,
    Object? createdAt = freezed,
    Object? paymentChannel = null,
  }) {
    return _then(_value.copyWith(
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentChannel: null == paymentChannel
          ? _value.paymentChannel
          : paymentChannel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyIncomeCopyWith<$Res> implements $MyIncomeCopyWith<$Res> {
  factory _$$_MyIncomeCopyWith(
          _$_MyIncome value, $Res Function(_$_MyIncome) then) =
      __$$_MyIncomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int serviceId,
      int orderId,
      String name,
      String amount,
      String taxAmount,
      String discountAmount,
      String paymentStatus,
      DateTime? createdAt,
      String paymentChannel});
}

/// @nodoc
class __$$_MyIncomeCopyWithImpl<$Res>
    extends _$MyIncomeCopyWithImpl<$Res, _$_MyIncome>
    implements _$$_MyIncomeCopyWith<$Res> {
  __$$_MyIncomeCopyWithImpl(
      _$_MyIncome _value, $Res Function(_$_MyIncome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = null,
    Object? orderId = null,
    Object? name = null,
    Object? amount = null,
    Object? taxAmount = null,
    Object? discountAmount = null,
    Object? paymentStatus = null,
    Object? createdAt = freezed,
    Object? paymentChannel = null,
  }) {
    return _then(_$_MyIncome(
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentChannel: null == paymentChannel
          ? _value.paymentChannel
          : paymentChannel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_MyIncome implements _MyIncome {
  const _$_MyIncome(
      {this.serviceId = -1,
      this.orderId = -1,
      this.name = '',
      this.amount = '',
      this.taxAmount = '',
      this.discountAmount = '',
      this.paymentStatus = '',
      this.createdAt,
      this.paymentChannel = ''});

  factory _$_MyIncome.fromJson(Map<String, dynamic> json) =>
      _$$_MyIncomeFromJson(json);

  @override
  @JsonKey()
  final int serviceId;
  @override
  @JsonKey()
  final int orderId;
  @override
  @JsonKey()
  final String name;
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
  final String paymentStatus;
  @override
  final DateTime? createdAt;
  @override
  @JsonKey()
  final String paymentChannel;

  @override
  String toString() {
    return 'MyIncome(serviceId: $serviceId, orderId: $orderId, name: $name, amount: $amount, taxAmount: $taxAmount, discountAmount: $discountAmount, paymentStatus: $paymentStatus, createdAt: $createdAt, paymentChannel: $paymentChannel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyIncome &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.paymentChannel, paymentChannel) ||
                other.paymentChannel == paymentChannel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, serviceId, orderId, name, amount,
      taxAmount, discountAmount, paymentStatus, createdAt, paymentChannel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyIncomeCopyWith<_$_MyIncome> get copyWith =>
      __$$_MyIncomeCopyWithImpl<_$_MyIncome>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyIncomeToJson(
      this,
    );
  }
}

abstract class _MyIncome implements MyIncome {
  const factory _MyIncome(
      {final int serviceId,
      final int orderId,
      final String name,
      final String amount,
      final String taxAmount,
      final String discountAmount,
      final String paymentStatus,
      final DateTime? createdAt,
      final String paymentChannel}) = _$_MyIncome;

  factory _MyIncome.fromJson(Map<String, dynamic> json) = _$_MyIncome.fromJson;

  @override
  int get serviceId;
  @override
  int get orderId;
  @override
  String get name;
  @override
  String get amount;
  @override
  String get taxAmount;
  @override
  String get discountAmount;
  @override
  String get paymentStatus;
  @override
  DateTime? get createdAt;
  @override
  String get paymentChannel;
  @override
  @JsonKey(ignore: true)
  _$$_MyIncomeCopyWith<_$_MyIncome> get copyWith =>
      throw _privateConstructorUsedError;
}
