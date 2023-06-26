// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderHistoryModel _$OrderHistoryModelFromJson(Map<String, dynamic> json) {
  return _OrderHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryModel {
  bool get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  List<OrderHistory> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryModelCopyWith<OrderHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryModelCopyWith<$Res> {
  factory $OrderHistoryModelCopyWith(
          OrderHistoryModel value, $Res Function(OrderHistoryModel) then) =
      _$OrderHistoryModelCopyWithImpl<$Res, OrderHistoryModel>;
  @useResult
  $Res call({bool status, String msg, List<OrderHistory> data});
}

/// @nodoc
class _$OrderHistoryModelCopyWithImpl<$Res, $Val extends OrderHistoryModel>
    implements $OrderHistoryModelCopyWith<$Res> {
  _$OrderHistoryModelCopyWithImpl(this._value, this._then);

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
              as List<OrderHistory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderHistoryModelCopyWith<$Res>
    implements $OrderHistoryModelCopyWith<$Res> {
  factory _$$_OrderHistoryModelCopyWith(_$_OrderHistoryModel value,
          $Res Function(_$_OrderHistoryModel) then) =
      __$$_OrderHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String msg, List<OrderHistory> data});
}

/// @nodoc
class __$$_OrderHistoryModelCopyWithImpl<$Res>
    extends _$OrderHistoryModelCopyWithImpl<$Res, _$_OrderHistoryModel>
    implements _$$_OrderHistoryModelCopyWith<$Res> {
  __$$_OrderHistoryModelCopyWithImpl(
      _$_OrderHistoryModel _value, $Res Function(_$_OrderHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$_OrderHistoryModel(
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
              as List<OrderHistory>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_OrderHistoryModel implements _OrderHistoryModel {
  const _$_OrderHistoryModel(
      {required this.status,
      required this.msg,
      required final List<OrderHistory> data})
      : _data = data;

  factory _$_OrderHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderHistoryModelFromJson(json);

  @override
  final bool status;
  @override
  final String msg;
  final List<OrderHistory> _data;
  @override
  List<OrderHistory> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OrderHistoryModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderHistoryModel &&
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
  _$$_OrderHistoryModelCopyWith<_$_OrderHistoryModel> get copyWith =>
      __$$_OrderHistoryModelCopyWithImpl<_$_OrderHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderHistoryModelToJson(
      this,
    );
  }
}

abstract class _OrderHistoryModel implements OrderHistoryModel {
  const factory _OrderHistoryModel(
      {required final bool status,
      required final String msg,
      required final List<OrderHistory> data}) = _$_OrderHistoryModel;

  factory _OrderHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_OrderHistoryModel.fromJson;

  @override
  bool get status;
  @override
  String get msg;
  @override
  List<OrderHistory> get data;
  @override
  @JsonKey(ignore: true)
  _$$_OrderHistoryModelCopyWith<_$_OrderHistoryModel> get copyWith =>
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
      {required this.id,
      required this.action,
      required this.description,
      required this.createdAt});

  factory _$_OrderHistory.fromJson(Map<String, dynamic> json) =>
      _$$_OrderHistoryFromJson(json);

  @override
  final int id;
  @override
  final String action;
  @override
  final String description;
  @override
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
      {required final int id,
      required final String action,
      required final String description,
      required final String createdAt}) = _$_OrderHistory;

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
