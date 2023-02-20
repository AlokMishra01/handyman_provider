// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllServiceModel _$AllServiceModelFromJson(Map<String, dynamic> json) {
  return _AllServiceModel.fromJson(json);
}

/// @nodoc
mixin _$AllServiceModel {
  bool get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  List<GeneralServiceModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllServiceModelCopyWith<AllServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllServiceModelCopyWith<$Res> {
  factory $AllServiceModelCopyWith(
          AllServiceModel value, $Res Function(AllServiceModel) then) =
      _$AllServiceModelCopyWithImpl<$Res, AllServiceModel>;
  @useResult
  $Res call({bool status, String msg, List<GeneralServiceModel> data});
}

/// @nodoc
class _$AllServiceModelCopyWithImpl<$Res, $Val extends AllServiceModel>
    implements $AllServiceModelCopyWith<$Res> {
  _$AllServiceModelCopyWithImpl(this._value, this._then);

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
              as List<GeneralServiceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllServiceModelCopyWith<$Res>
    implements $AllServiceModelCopyWith<$Res> {
  factory _$$_AllServiceModelCopyWith(
          _$_AllServiceModel value, $Res Function(_$_AllServiceModel) then) =
      __$$_AllServiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String msg, List<GeneralServiceModel> data});
}

/// @nodoc
class __$$_AllServiceModelCopyWithImpl<$Res>
    extends _$AllServiceModelCopyWithImpl<$Res, _$_AllServiceModel>
    implements _$$_AllServiceModelCopyWith<$Res> {
  __$$_AllServiceModelCopyWithImpl(
      _$_AllServiceModel _value, $Res Function(_$_AllServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$_AllServiceModel(
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
              as List<GeneralServiceModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_AllServiceModel implements _AllServiceModel {
  const _$_AllServiceModel(
      {required this.status,
      required this.msg,
      final List<GeneralServiceModel> data = const []})
      : _data = data;

  factory _$_AllServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_AllServiceModelFromJson(json);

  @override
  final bool status;
  @override
  final String msg;
  final List<GeneralServiceModel> _data;
  @override
  @JsonKey()
  List<GeneralServiceModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AllServiceModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllServiceModel &&
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
  _$$_AllServiceModelCopyWith<_$_AllServiceModel> get copyWith =>
      __$$_AllServiceModelCopyWithImpl<_$_AllServiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllServiceModelToJson(
      this,
    );
  }
}

abstract class _AllServiceModel implements AllServiceModel {
  const factory _AllServiceModel(
      {required final bool status,
      required final String msg,
      final List<GeneralServiceModel> data}) = _$_AllServiceModel;

  factory _AllServiceModel.fromJson(Map<String, dynamic> json) =
      _$_AllServiceModel.fromJson;

  @override
  bool get status;
  @override
  String get msg;
  @override
  List<GeneralServiceModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_AllServiceModelCopyWith<_$_AllServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GeneralServiceModel _$GeneralServiceModelFromJson(Map<String, dynamic> json) {
  return _GeneralServiceModel.fromJson(json);
}

/// @nodoc
mixin _$GeneralServiceModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  List<ServiceIDModel> get services => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralServiceModelCopyWith<GeneralServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralServiceModelCopyWith<$Res> {
  factory $GeneralServiceModelCopyWith(
          GeneralServiceModel value, $Res Function(GeneralServiceModel) then) =
      _$GeneralServiceModelCopyWithImpl<$Res, GeneralServiceModel>;
  @useResult
  $Res call({int id, String name, String icon, List<ServiceIDModel> services});
}

/// @nodoc
class _$GeneralServiceModelCopyWithImpl<$Res, $Val extends GeneralServiceModel>
    implements $GeneralServiceModelCopyWith<$Res> {
  _$GeneralServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? services = null,
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceIDModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeneralServiceModelCopyWith<$Res>
    implements $GeneralServiceModelCopyWith<$Res> {
  factory _$$_GeneralServiceModelCopyWith(_$_GeneralServiceModel value,
          $Res Function(_$_GeneralServiceModel) then) =
      __$$_GeneralServiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String icon, List<ServiceIDModel> services});
}

/// @nodoc
class __$$_GeneralServiceModelCopyWithImpl<$Res>
    extends _$GeneralServiceModelCopyWithImpl<$Res, _$_GeneralServiceModel>
    implements _$$_GeneralServiceModelCopyWith<$Res> {
  __$$_GeneralServiceModelCopyWithImpl(_$_GeneralServiceModel _value,
      $Res Function(_$_GeneralServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? services = null,
  }) {
    return _then(_$_GeneralServiceModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceIDModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_GeneralServiceModel implements _GeneralServiceModel {
  const _$_GeneralServiceModel(
      {required this.id,
      required this.name,
      this.icon = '',
      final List<ServiceIDModel> services = const []})
      : _services = services;

  factory _$_GeneralServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralServiceModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String icon;
  final List<ServiceIDModel> _services;
  @override
  @JsonKey()
  List<ServiceIDModel> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'GeneralServiceModel(id: $id, name: $name, icon: $icon, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralServiceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon,
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneralServiceModelCopyWith<_$_GeneralServiceModel> get copyWith =>
      __$$_GeneralServiceModelCopyWithImpl<_$_GeneralServiceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralServiceModelToJson(
      this,
    );
  }
}

abstract class _GeneralServiceModel implements GeneralServiceModel {
  const factory _GeneralServiceModel(
      {required final int id,
      required final String name,
      final String icon,
      final List<ServiceIDModel> services}) = _$_GeneralServiceModel;

  factory _GeneralServiceModel.fromJson(Map<String, dynamic> json) =
      _$_GeneralServiceModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  List<ServiceIDModel> get services;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralServiceModelCopyWith<_$_GeneralServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
