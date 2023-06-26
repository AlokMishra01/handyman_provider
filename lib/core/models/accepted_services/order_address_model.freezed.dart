// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderAddressModel _$OrderAddressModelFromJson(Map<String, dynamic> json) {
  return _OrderAddressModel.fromJson(json);
}

/// @nodoc
mixin _$OrderAddressModel {
  bool get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  OrderAddress get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderAddressModelCopyWith<OrderAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderAddressModelCopyWith<$Res> {
  factory $OrderAddressModelCopyWith(
          OrderAddressModel value, $Res Function(OrderAddressModel) then) =
      _$OrderAddressModelCopyWithImpl<$Res, OrderAddressModel>;
  @useResult
  $Res call({bool status, String msg, OrderAddress data});

  $OrderAddressCopyWith<$Res> get data;
}

/// @nodoc
class _$OrderAddressModelCopyWithImpl<$Res, $Val extends OrderAddressModel>
    implements $OrderAddressModelCopyWith<$Res> {
  _$OrderAddressModelCopyWithImpl(this._value, this._then);

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
              as OrderAddress,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderAddressCopyWith<$Res> get data {
    return $OrderAddressCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderAddressModelCopyWith<$Res>
    implements $OrderAddressModelCopyWith<$Res> {
  factory _$$_OrderAddressModelCopyWith(_$_OrderAddressModel value,
          $Res Function(_$_OrderAddressModel) then) =
      __$$_OrderAddressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String msg, OrderAddress data});

  @override
  $OrderAddressCopyWith<$Res> get data;
}

/// @nodoc
class __$$_OrderAddressModelCopyWithImpl<$Res>
    extends _$OrderAddressModelCopyWithImpl<$Res, _$_OrderAddressModel>
    implements _$$_OrderAddressModelCopyWith<$Res> {
  __$$_OrderAddressModelCopyWithImpl(
      _$_OrderAddressModel _value, $Res Function(_$_OrderAddressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$_OrderAddressModel(
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
              as OrderAddress,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderAddressModel implements _OrderAddressModel {
  const _$_OrderAddressModel(
      {required this.status, required this.msg, required this.data});

  factory _$_OrderAddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderAddressModelFromJson(json);

  @override
  final bool status;
  @override
  final String msg;
  @override
  final OrderAddress data;

  @override
  String toString() {
    return 'OrderAddressModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderAddressModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderAddressModelCopyWith<_$_OrderAddressModel> get copyWith =>
      __$$_OrderAddressModelCopyWithImpl<_$_OrderAddressModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderAddressModelToJson(
      this,
    );
  }
}

abstract class _OrderAddressModel implements OrderAddressModel {
  const factory _OrderAddressModel(
      {required final bool status,
      required final String msg,
      required final OrderAddress data}) = _$_OrderAddressModel;

  factory _OrderAddressModel.fromJson(Map<String, dynamic> json) =
      _$_OrderAddressModel.fromJson;

  @override
  bool get status;
  @override
  String get msg;
  @override
  OrderAddress get data;
  @override
  @JsonKey(ignore: true)
  _$$_OrderAddressModelCopyWith<_$_OrderAddressModel> get copyWith =>
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
@JsonSerializable()
class _$_OrderAddress implements _OrderAddress {
  const _$_OrderAddress(
      {required this.orderName,
      required this.mobile,
      required this.address,
      required this.latitude,
      required this.longitude});

  factory _$_OrderAddress.fromJson(Map<String, dynamic> json) =>
      _$$_OrderAddressFromJson(json);

  @override
  final String orderName;
  @override
  final String mobile;
  @override
  final String address;
  @override
  final double latitude;
  @override
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
      {required final String orderName,
      required final String mobile,
      required final String address,
      required final double latitude,
      required final double longitude}) = _$_OrderAddress;

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
