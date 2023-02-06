// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceTypeModel _$ServiceTypeModelFromJson(Map<String, dynamic> json) {
  return _ServiceTypeModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceTypeModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceTypeModelCopyWith<ServiceTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceTypeModelCopyWith<$Res> {
  factory $ServiceTypeModelCopyWith(
          ServiceTypeModel value, $Res Function(ServiceTypeModel) then) =
      _$ServiceTypeModelCopyWithImpl<$Res, ServiceTypeModel>;
  @useResult
  $Res call({int id, String name, String icon});
}

/// @nodoc
class _$ServiceTypeModelCopyWithImpl<$Res, $Val extends ServiceTypeModel>
    implements $ServiceTypeModelCopyWith<$Res> {
  _$ServiceTypeModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceTypeModelCopyWith<$Res>
    implements $ServiceTypeModelCopyWith<$Res> {
  factory _$$_ServiceTypeModelCopyWith(
          _$_ServiceTypeModel value, $Res Function(_$_ServiceTypeModel) then) =
      __$$_ServiceTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String icon});
}

/// @nodoc
class __$$_ServiceTypeModelCopyWithImpl<$Res>
    extends _$ServiceTypeModelCopyWithImpl<$Res, _$_ServiceTypeModel>
    implements _$$_ServiceTypeModelCopyWith<$Res> {
  __$$_ServiceTypeModelCopyWithImpl(
      _$_ServiceTypeModel _value, $Res Function(_$_ServiceTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_$_ServiceTypeModel(
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
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ServiceTypeModel implements _ServiceTypeModel {
  const _$_ServiceTypeModel({required this.id, this.name = '', this.icon = ''});

  factory _$_ServiceTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceTypeModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String icon;

  @override
  String toString() {
    return 'ServiceTypeModel(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceTypeModelCopyWith<_$_ServiceTypeModel> get copyWith =>
      __$$_ServiceTypeModelCopyWithImpl<_$_ServiceTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceTypeModelToJson(
      this,
    );
  }
}

abstract class _ServiceTypeModel implements ServiceTypeModel {
  const factory _ServiceTypeModel(
      {required final int id,
      final String name,
      final String icon}) = _$_ServiceTypeModel;

  factory _ServiceTypeModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceTypeModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceTypeModelCopyWith<_$_ServiceTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
