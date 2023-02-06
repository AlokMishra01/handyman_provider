// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDetailModel _$ProfileDetailModelFromJson(Map<String, dynamic> json) {
  return _ProfileDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileDetailModel {
  String get shortInfo => throw _privateConstructorUsedError;
  String get experience => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get skills => throw _privateConstructorUsedError;
  GeoLocationModel? get geolocation => throw _privateConstructorUsedError;
  CityModel? get city => throw _privateConstructorUsedError;
  EducationLevelModel? get educationLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDetailModelCopyWith<ProfileDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDetailModelCopyWith<$Res> {
  factory $ProfileDetailModelCopyWith(
          ProfileDetailModel value, $Res Function(ProfileDetailModel) then) =
      _$ProfileDetailModelCopyWithImpl<$Res, ProfileDetailModel>;
  @useResult
  $Res call(
      {String shortInfo,
      String experience,
      String address,
      String skills,
      GeoLocationModel? geolocation,
      CityModel? city,
      EducationLevelModel? educationLevel});

  $GeoLocationModelCopyWith<$Res>? get geolocation;
  $CityModelCopyWith<$Res>? get city;
  $EducationLevelModelCopyWith<$Res>? get educationLevel;
}

/// @nodoc
class _$ProfileDetailModelCopyWithImpl<$Res, $Val extends ProfileDetailModel>
    implements $ProfileDetailModelCopyWith<$Res> {
  _$ProfileDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortInfo = null,
    Object? experience = null,
    Object? address = null,
    Object? skills = null,
    Object? geolocation = freezed,
    Object? city = freezed,
    Object? educationLevel = freezed,
  }) {
    return _then(_value.copyWith(
      shortInfo: null == shortInfo
          ? _value.shortInfo
          : shortInfo // ignore: cast_nullable_to_non_nullable
              as String,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as String,
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as GeoLocationModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      educationLevel: freezed == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as EducationLevelModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationModelCopyWith<$Res>? get geolocation {
    if (_value.geolocation == null) {
      return null;
    }

    return $GeoLocationModelCopyWith<$Res>(_value.geolocation!, (value) {
      return _then(_value.copyWith(geolocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EducationLevelModelCopyWith<$Res>? get educationLevel {
    if (_value.educationLevel == null) {
      return null;
    }

    return $EducationLevelModelCopyWith<$Res>(_value.educationLevel!, (value) {
      return _then(_value.copyWith(educationLevel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileDetailModelCopyWith<$Res>
    implements $ProfileDetailModelCopyWith<$Res> {
  factory _$$_ProfileDetailModelCopyWith(_$_ProfileDetailModel value,
          $Res Function(_$_ProfileDetailModel) then) =
      __$$_ProfileDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shortInfo,
      String experience,
      String address,
      String skills,
      GeoLocationModel? geolocation,
      CityModel? city,
      EducationLevelModel? educationLevel});

  @override
  $GeoLocationModelCopyWith<$Res>? get geolocation;
  @override
  $CityModelCopyWith<$Res>? get city;
  @override
  $EducationLevelModelCopyWith<$Res>? get educationLevel;
}

/// @nodoc
class __$$_ProfileDetailModelCopyWithImpl<$Res>
    extends _$ProfileDetailModelCopyWithImpl<$Res, _$_ProfileDetailModel>
    implements _$$_ProfileDetailModelCopyWith<$Res> {
  __$$_ProfileDetailModelCopyWithImpl(
      _$_ProfileDetailModel _value, $Res Function(_$_ProfileDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortInfo = null,
    Object? experience = null,
    Object? address = null,
    Object? skills = null,
    Object? geolocation = freezed,
    Object? city = freezed,
    Object? educationLevel = freezed,
  }) {
    return _then(_$_ProfileDetailModel(
      shortInfo: null == shortInfo
          ? _value.shortInfo
          : shortInfo // ignore: cast_nullable_to_non_nullable
              as String,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as String,
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as GeoLocationModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      educationLevel: freezed == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as EducationLevelModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ProfileDetailModel implements _ProfileDetailModel {
  const _$_ProfileDetailModel(
      {this.shortInfo = '',
      this.experience = '',
      this.address = '',
      this.skills = '',
      this.geolocation,
      this.city,
      this.educationLevel});

  factory _$_ProfileDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDetailModelFromJson(json);

  @override
  @JsonKey()
  final String shortInfo;
  @override
  @JsonKey()
  final String experience;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String skills;
  @override
  final GeoLocationModel? geolocation;
  @override
  final CityModel? city;
  @override
  final EducationLevelModel? educationLevel;

  @override
  String toString() {
    return 'ProfileDetailModel(shortInfo: $shortInfo, experience: $experience, address: $address, skills: $skills, geolocation: $geolocation, city: $city, educationLevel: $educationLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileDetailModel &&
            (identical(other.shortInfo, shortInfo) ||
                other.shortInfo == shortInfo) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.skills, skills) || other.skills == skills) &&
            (identical(other.geolocation, geolocation) ||
                other.geolocation == geolocation) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.educationLevel, educationLevel) ||
                other.educationLevel == educationLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shortInfo, experience, address,
      skills, geolocation, city, educationLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileDetailModelCopyWith<_$_ProfileDetailModel> get copyWith =>
      __$$_ProfileDetailModelCopyWithImpl<_$_ProfileDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileDetailModelToJson(
      this,
    );
  }
}

abstract class _ProfileDetailModel implements ProfileDetailModel {
  const factory _ProfileDetailModel(
      {final String shortInfo,
      final String experience,
      final String address,
      final String skills,
      final GeoLocationModel? geolocation,
      final CityModel? city,
      final EducationLevelModel? educationLevel}) = _$_ProfileDetailModel;

  factory _ProfileDetailModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileDetailModel.fromJson;

  @override
  String get shortInfo;
  @override
  String get experience;
  @override
  String get address;
  @override
  String get skills;
  @override
  GeoLocationModel? get geolocation;
  @override
  CityModel? get city;
  @override
  EducationLevelModel? get educationLevel;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileDetailModelCopyWith<_$_ProfileDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
