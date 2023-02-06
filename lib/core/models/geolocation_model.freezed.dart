// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geolocation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoLocationModel _$GeoLocationModelFromJson(Map<String, dynamic> json) {
  return _GeoLocationModel.fromJson(json);
}

/// @nodoc
mixin _$GeoLocationModel {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoLocationModelCopyWith<GeoLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLocationModelCopyWith<$Res> {
  factory $GeoLocationModelCopyWith(
          GeoLocationModel value, $Res Function(GeoLocationModel) then) =
      _$GeoLocationModelCopyWithImpl<$Res, GeoLocationModel>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$GeoLocationModelCopyWithImpl<$Res, $Val extends GeoLocationModel>
    implements $GeoLocationModelCopyWith<$Res> {
  _$GeoLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_GeoLocationModelCopyWith<$Res>
    implements $GeoLocationModelCopyWith<$Res> {
  factory _$$_GeoLocationModelCopyWith(
          _$_GeoLocationModel value, $Res Function(_$_GeoLocationModel) then) =
      __$$_GeoLocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_GeoLocationModelCopyWithImpl<$Res>
    extends _$GeoLocationModelCopyWithImpl<$Res, _$_GeoLocationModel>
    implements _$$_GeoLocationModelCopyWith<$Res> {
  __$$_GeoLocationModelCopyWithImpl(
      _$_GeoLocationModel _value, $Res Function(_$_GeoLocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_GeoLocationModel(
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
class _$_GeoLocationModel implements _GeoLocationModel {
  const _$_GeoLocationModel({this.latitude = 0.0, this.longitude = 0.0});

  factory _$_GeoLocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeoLocationModelFromJson(json);

  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;

  @override
  String toString() {
    return 'GeoLocationModel(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoLocationModel &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeoLocationModelCopyWith<_$_GeoLocationModel> get copyWith =>
      __$$_GeoLocationModelCopyWithImpl<_$_GeoLocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoLocationModelToJson(
      this,
    );
  }
}

abstract class _GeoLocationModel implements GeoLocationModel {
  const factory _GeoLocationModel(
      {final double latitude, final double longitude}) = _$_GeoLocationModel;

  factory _GeoLocationModel.fromJson(Map<String, dynamic> json) =
      _$_GeoLocationModel.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_GeoLocationModelCopyWith<_$_GeoLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
