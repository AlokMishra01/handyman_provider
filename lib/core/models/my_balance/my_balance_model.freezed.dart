// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_balance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyBalanceModel _$MyBalanceModelFromJson(Map<String, dynamic> json) {
  return _MyBalanceModel.fromJson(json);
}

/// @nodoc
mixin _$MyBalanceModel {
  List<BalanceModel> get data => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyBalanceModelCopyWith<MyBalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyBalanceModelCopyWith<$Res> {
  factory $MyBalanceModelCopyWith(
          MyBalanceModel value, $Res Function(MyBalanceModel) then) =
      _$MyBalanceModelCopyWithImpl<$Res, MyBalanceModel>;
  @useResult
  $Res call({List<BalanceModel> data, Links? links, Meta? meta});

  $LinksCopyWith<$Res>? get links;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$MyBalanceModelCopyWithImpl<$Res, $Val extends MyBalanceModel>
    implements $MyBalanceModelCopyWith<$Res> {
  _$MyBalanceModelCopyWithImpl(this._value, this._then);

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
              as List<BalanceModel>,
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
abstract class _$$_MyBalanceModelCopyWith<$Res>
    implements $MyBalanceModelCopyWith<$Res> {
  factory _$$_MyBalanceModelCopyWith(
          _$_MyBalanceModel value, $Res Function(_$_MyBalanceModel) then) =
      __$$_MyBalanceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BalanceModel> data, Links? links, Meta? meta});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_MyBalanceModelCopyWithImpl<$Res>
    extends _$MyBalanceModelCopyWithImpl<$Res, _$_MyBalanceModel>
    implements _$$_MyBalanceModelCopyWith<$Res> {
  __$$_MyBalanceModelCopyWithImpl(
      _$_MyBalanceModel _value, $Res Function(_$_MyBalanceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_MyBalanceModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BalanceModel>,
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
class _$_MyBalanceModel implements _MyBalanceModel {
  const _$_MyBalanceModel(
      {final List<BalanceModel> data = const [], this.links, this.meta})
      : _data = data;

  factory _$_MyBalanceModel.fromJson(Map<String, dynamic> json) =>
      _$$_MyBalanceModelFromJson(json);

  final List<BalanceModel> _data;
  @override
  @JsonKey()
  List<BalanceModel> get data {
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
    return 'MyBalanceModel(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyBalanceModel &&
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
  _$$_MyBalanceModelCopyWith<_$_MyBalanceModel> get copyWith =>
      __$$_MyBalanceModelCopyWithImpl<_$_MyBalanceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyBalanceModelToJson(
      this,
    );
  }
}

abstract class _MyBalanceModel implements MyBalanceModel {
  const factory _MyBalanceModel(
      {final List<BalanceModel> data,
      final Links? links,
      final Meta? meta}) = _$_MyBalanceModel;

  factory _MyBalanceModel.fromJson(Map<String, dynamic> json) =
      _$_MyBalanceModel.fromJson;

  @override
  List<BalanceModel> get data;
  @override
  Links? get links;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_MyBalanceModelCopyWith<_$_MyBalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BalanceModel _$BalanceModelFromJson(Map<String, dynamic> json) {
  return _BalanceModel.fromJson(json);
}

/// @nodoc
mixin _$BalanceModel {
  String get transactionId => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get voucher => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BalanceModelCopyWith<BalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceModelCopyWith<$Res> {
  factory $BalanceModelCopyWith(
          BalanceModel value, $Res Function(BalanceModel) then) =
      _$BalanceModelCopyWithImpl<$Res, BalanceModel>;
  @useResult
  $Res call(
      {String transactionId,
      DateTime? date,
      String currency,
      String type,
      String amount,
      String voucher,
      String status,
      String remark});
}

/// @nodoc
class _$BalanceModelCopyWithImpl<$Res, $Val extends BalanceModel>
    implements $BalanceModelCopyWith<$Res> {
  _$BalanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? date = freezed,
    Object? currency = null,
    Object? type = null,
    Object? amount = null,
    Object? voucher = null,
    Object? status = null,
    Object? remark = null,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      voucher: null == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BalanceModelCopyWith<$Res>
    implements $BalanceModelCopyWith<$Res> {
  factory _$$_BalanceModelCopyWith(
          _$_BalanceModel value, $Res Function(_$_BalanceModel) then) =
      __$$_BalanceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionId,
      DateTime? date,
      String currency,
      String type,
      String amount,
      String voucher,
      String status,
      String remark});
}

/// @nodoc
class __$$_BalanceModelCopyWithImpl<$Res>
    extends _$BalanceModelCopyWithImpl<$Res, _$_BalanceModel>
    implements _$$_BalanceModelCopyWith<$Res> {
  __$$_BalanceModelCopyWithImpl(
      _$_BalanceModel _value, $Res Function(_$_BalanceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? date = freezed,
    Object? currency = null,
    Object? type = null,
    Object? amount = null,
    Object? voucher = null,
    Object? status = null,
    Object? remark = null,
  }) {
    return _then(_$_BalanceModel(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      voucher: null == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_BalanceModel implements _BalanceModel {
  const _$_BalanceModel(
      {this.transactionId = '',
      this.date,
      this.currency = '',
      this.type = '',
      this.amount = '',
      this.voucher = '',
      this.status = '',
      this.remark = ''});

  factory _$_BalanceModel.fromJson(Map<String, dynamic> json) =>
      _$$_BalanceModelFromJson(json);

  @override
  @JsonKey()
  final String transactionId;
  @override
  final DateTime? date;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String amount;
  @override
  @JsonKey()
  final String voucher;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String remark;

  @override
  String toString() {
    return 'BalanceModel(transactionId: $transactionId, date: $date, currency: $currency, type: $type, amount: $amount, voucher: $voucher, status: $status, remark: $remark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BalanceModel &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.voucher, voucher) || other.voucher == voucher) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remark, remark) || other.remark == remark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, date, currency,
      type, amount, voucher, status, remark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BalanceModelCopyWith<_$_BalanceModel> get copyWith =>
      __$$_BalanceModelCopyWithImpl<_$_BalanceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BalanceModelToJson(
      this,
    );
  }
}

abstract class _BalanceModel implements BalanceModel {
  const factory _BalanceModel(
      {final String transactionId,
      final DateTime? date,
      final String currency,
      final String type,
      final String amount,
      final String voucher,
      final String status,
      final String remark}) = _$_BalanceModel;

  factory _BalanceModel.fromJson(Map<String, dynamic> json) =
      _$_BalanceModel.fromJson;

  @override
  String get transactionId;
  @override
  DateTime? get date;
  @override
  String get currency;
  @override
  String get type;
  @override
  String get amount;
  @override
  String get voucher;
  @override
  String get status;
  @override
  String get remark;
  @override
  @JsonKey(ignore: true)
  _$$_BalanceModelCopyWith<_$_BalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
