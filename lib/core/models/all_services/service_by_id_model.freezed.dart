// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_by_id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceByIdModel _$ServiceByIdModelFromJson(Map<String, dynamic> json) {
  return _ServiceByIdModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceByIdModel {
  bool get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  List<ServiceIDModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceByIdModelCopyWith<ServiceByIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceByIdModelCopyWith<$Res> {
  factory $ServiceByIdModelCopyWith(
          ServiceByIdModel value, $Res Function(ServiceByIdModel) then) =
      _$ServiceByIdModelCopyWithImpl<$Res, ServiceByIdModel>;
  @useResult
  $Res call({bool status, String msg, List<ServiceIDModel> data});
}

/// @nodoc
class _$ServiceByIdModelCopyWithImpl<$Res, $Val extends ServiceByIdModel>
    implements $ServiceByIdModelCopyWith<$Res> {
  _$ServiceByIdModelCopyWithImpl(this._value, this._then);

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
              as List<ServiceIDModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceByIdModelCopyWith<$Res>
    implements $ServiceByIdModelCopyWith<$Res> {
  factory _$$_ServiceByIdModelCopyWith(
          _$_ServiceByIdModel value, $Res Function(_$_ServiceByIdModel) then) =
      __$$_ServiceByIdModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String msg, List<ServiceIDModel> data});
}

/// @nodoc
class __$$_ServiceByIdModelCopyWithImpl<$Res>
    extends _$ServiceByIdModelCopyWithImpl<$Res, _$_ServiceByIdModel>
    implements _$$_ServiceByIdModelCopyWith<$Res> {
  __$$_ServiceByIdModelCopyWithImpl(
      _$_ServiceByIdModel _value, $Res Function(_$_ServiceByIdModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$_ServiceByIdModel(
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
              as List<ServiceIDModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ServiceByIdModel implements _ServiceByIdModel {
  const _$_ServiceByIdModel(
      {this.status = true,
      this.msg = '',
      final List<ServiceIDModel> data = const []})
      : _data = data;

  factory _$_ServiceByIdModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceByIdModelFromJson(json);

  @override
  @JsonKey()
  final bool status;
  @override
  @JsonKey()
  final String msg;
  final List<ServiceIDModel> _data;
  @override
  @JsonKey()
  List<ServiceIDModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ServiceByIdModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceByIdModel &&
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
  _$$_ServiceByIdModelCopyWith<_$_ServiceByIdModel> get copyWith =>
      __$$_ServiceByIdModelCopyWithImpl<_$_ServiceByIdModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceByIdModelToJson(
      this,
    );
  }
}

abstract class _ServiceByIdModel implements ServiceByIdModel {
  const factory _ServiceByIdModel(
      {final bool status,
      final String msg,
      final List<ServiceIDModel> data}) = _$_ServiceByIdModel;

  factory _ServiceByIdModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceByIdModel.fromJson;

  @override
  bool get status;
  @override
  String get msg;
  @override
  List<ServiceIDModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceByIdModelCopyWith<_$_ServiceByIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceIDModel _$ServiceIDModelFromJson(Map<String, dynamic> json) {
  return _ServiceIDModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceIDModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceIDModelCopyWith<ServiceIDModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceIDModelCopyWith<$Res> {
  factory $ServiceIDModelCopyWith(
          ServiceIDModel value, $Res Function(ServiceIDModel) then) =
      _$ServiceIDModelCopyWithImpl<$Res, ServiceIDModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String type,
      int rating,
      String cost,
      String discount,
      String duration,
      String description,
      String icon});
}

/// @nodoc
class _$ServiceIDModelCopyWithImpl<$Res, $Val extends ServiceIDModel>
    implements $ServiceIDModelCopyWith<$Res> {
  _$ServiceIDModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? rating = null,
    Object? cost = null,
    Object? discount = null,
    Object? duration = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceIDModelCopyWith<$Res>
    implements $ServiceIDModelCopyWith<$Res> {
  factory _$$_ServiceIDModelCopyWith(
          _$_ServiceIDModel value, $Res Function(_$_ServiceIDModel) then) =
      __$$_ServiceIDModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String type,
      int rating,
      String cost,
      String discount,
      String duration,
      String description,
      String icon});
}

/// @nodoc
class __$$_ServiceIDModelCopyWithImpl<$Res>
    extends _$ServiceIDModelCopyWithImpl<$Res, _$_ServiceIDModel>
    implements _$$_ServiceIDModelCopyWith<$Res> {
  __$$_ServiceIDModelCopyWithImpl(
      _$_ServiceIDModel _value, $Res Function(_$_ServiceIDModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? rating = null,
    Object? cost = null,
    Object? discount = null,
    Object? duration = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$_ServiceIDModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ServiceIDModel implements _ServiceIDModel {
  const _$_ServiceIDModel(
      {required this.id,
      this.title = '',
      this.type = '',
      this.rating = 0,
      this.cost = '',
      this.discount = '',
      this.duration = '',
      this.description = '',
      this.icon = ''});

  factory _$_ServiceIDModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceIDModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final int rating;
  @override
  @JsonKey()
  final String cost;
  @override
  @JsonKey()
  final String discount;
  @override
  @JsonKey()
  final String duration;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String icon;

  @override
  String toString() {
    return 'ServiceIDModel(id: $id, title: $title, type: $type, rating: $rating, cost: $cost, discount: $discount, duration: $duration, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceIDModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, type, rating, cost,
      discount, duration, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceIDModelCopyWith<_$_ServiceIDModel> get copyWith =>
      __$$_ServiceIDModelCopyWithImpl<_$_ServiceIDModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceIDModelToJson(
      this,
    );
  }
}

abstract class _ServiceIDModel implements ServiceIDModel {
  const factory _ServiceIDModel(
      {required final int id,
      final String title,
      final String type,
      final int rating,
      final String cost,
      final String discount,
      final String duration,
      final String description,
      final String icon}) = _$_ServiceIDModel;

  factory _ServiceIDModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceIDModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get type;
  @override
  int get rating;
  @override
  String get cost;
  @override
  String get discount;
  @override
  String get duration;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceIDModelCopyWith<_$_ServiceIDModel> get copyWith =>
      throw _privateConstructorUsedError;
}
