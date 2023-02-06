// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  int get id => throw _privateConstructorUsedError;
  String get balance => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get idNumber => throw _privateConstructorUsedError;
  String get idCardThumb =>
      throw _privateConstructorUsedError; // 1: approved, 2: requested, else: make request services/permission
  int get addPrice => throw _privateConstructorUsedError;
  bool get verificationStatus => throw _privateConstructorUsedError;
  bool get emailVerificationStatus => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  List<ServiceTypeModel> get offeredServices =>
      throw _privateConstructorUsedError;
  ProfileDetailModel? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {int id,
      String balance,
      String name,
      String mobile,
      String email,
      String idNumber,
      String idCardThumb,
      int addPrice,
      bool verificationStatus,
      bool emailVerificationStatus,
      String profileImage,
      List<ServiceTypeModel> offeredServices,
      ProfileDetailModel? detail});

  $ProfileDetailModelCopyWith<$Res>? get detail;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? balance = null,
    Object? name = null,
    Object? mobile = null,
    Object? email = null,
    Object? idNumber = null,
    Object? idCardThumb = null,
    Object? addPrice = null,
    Object? verificationStatus = null,
    Object? emailVerificationStatus = null,
    Object? profileImage = null,
    Object? offeredServices = null,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      idCardThumb: null == idCardThumb
          ? _value.idCardThumb
          : idCardThumb // ignore: cast_nullable_to_non_nullable
              as String,
      addPrice: null == addPrice
          ? _value.addPrice
          : addPrice // ignore: cast_nullable_to_non_nullable
              as int,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      emailVerificationStatus: null == emailVerificationStatus
          ? _value.emailVerificationStatus
          : emailVerificationStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      offeredServices: null == offeredServices
          ? _value.offeredServices
          : offeredServices // ignore: cast_nullable_to_non_nullable
              as List<ServiceTypeModel>,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as ProfileDetailModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileDetailModelCopyWith<$Res>? get detail {
    if (_value.detail == null) {
      return null;
    }

    return $ProfileDetailModelCopyWith<$Res>(_value.detail!, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$_ProfileModelCopyWith(
          _$_ProfileModel value, $Res Function(_$_ProfileModel) then) =
      __$$_ProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String balance,
      String name,
      String mobile,
      String email,
      String idNumber,
      String idCardThumb,
      int addPrice,
      bool verificationStatus,
      bool emailVerificationStatus,
      String profileImage,
      List<ServiceTypeModel> offeredServices,
      ProfileDetailModel? detail});

  @override
  $ProfileDetailModelCopyWith<$Res>? get detail;
}

/// @nodoc
class __$$_ProfileModelCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$_ProfileModel>
    implements _$$_ProfileModelCopyWith<$Res> {
  __$$_ProfileModelCopyWithImpl(
      _$_ProfileModel _value, $Res Function(_$_ProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? balance = null,
    Object? name = null,
    Object? mobile = null,
    Object? email = null,
    Object? idNumber = null,
    Object? idCardThumb = null,
    Object? addPrice = null,
    Object? verificationStatus = null,
    Object? emailVerificationStatus = null,
    Object? profileImage = null,
    Object? offeredServices = null,
    Object? detail = freezed,
  }) {
    return _then(_$_ProfileModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      idCardThumb: null == idCardThumb
          ? _value.idCardThumb
          : idCardThumb // ignore: cast_nullable_to_non_nullable
              as String,
      addPrice: null == addPrice
          ? _value.addPrice
          : addPrice // ignore: cast_nullable_to_non_nullable
              as int,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      emailVerificationStatus: null == emailVerificationStatus
          ? _value.emailVerificationStatus
          : emailVerificationStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      offeredServices: null == offeredServices
          ? _value._offeredServices
          : offeredServices // ignore: cast_nullable_to_non_nullable
              as List<ServiceTypeModel>,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as ProfileDetailModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ProfileModel implements _ProfileModel {
  const _$_ProfileModel(
      {this.id = 0,
      this.balance = '',
      this.name = '',
      this.mobile = '',
      this.email = '',
      this.idNumber = '',
      this.idCardThumb = '',
      this.addPrice = 0,
      this.verificationStatus = false,
      this.emailVerificationStatus = false,
      this.profileImage = '',
      final List<ServiceTypeModel> offeredServices = const [],
      this.detail})
      : _offeredServices = offeredServices;

  factory _$_ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String balance;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String mobile;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String idNumber;
  @override
  @JsonKey()
  final String idCardThumb;
// 1: approved, 2: requested, else: make request services/permission
  @override
  @JsonKey()
  final int addPrice;
  @override
  @JsonKey()
  final bool verificationStatus;
  @override
  @JsonKey()
  final bool emailVerificationStatus;
  @override
  @JsonKey()
  final String profileImage;
  final List<ServiceTypeModel> _offeredServices;
  @override
  @JsonKey()
  List<ServiceTypeModel> get offeredServices {
    if (_offeredServices is EqualUnmodifiableListView) return _offeredServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offeredServices);
  }

  @override
  final ProfileDetailModel? detail;

  @override
  String toString() {
    return 'ProfileModel(id: $id, balance: $balance, name: $name, mobile: $mobile, email: $email, idNumber: $idNumber, idCardThumb: $idCardThumb, addPrice: $addPrice, verificationStatus: $verificationStatus, emailVerificationStatus: $emailVerificationStatus, profileImage: $profileImage, offeredServices: $offeredServices, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.idCardThumb, idCardThumb) ||
                other.idCardThumb == idCardThumb) &&
            (identical(other.addPrice, addPrice) ||
                other.addPrice == addPrice) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(
                    other.emailVerificationStatus, emailVerificationStatus) ||
                other.emailVerificationStatus == emailVerificationStatus) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            const DeepCollectionEquality()
                .equals(other._offeredServices, _offeredServices) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      balance,
      name,
      mobile,
      email,
      idNumber,
      idCardThumb,
      addPrice,
      verificationStatus,
      emailVerificationStatus,
      profileImage,
      const DeepCollectionEquality().hash(_offeredServices),
      detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      __$$_ProfileModelCopyWithImpl<_$_ProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileModelToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {final int id,
      final String balance,
      final String name,
      final String mobile,
      final String email,
      final String idNumber,
      final String idCardThumb,
      final int addPrice,
      final bool verificationStatus,
      final bool emailVerificationStatus,
      final String profileImage,
      final List<ServiceTypeModel> offeredServices,
      final ProfileDetailModel? detail}) = _$_ProfileModel;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileModel.fromJson;

  @override
  int get id;
  @override
  String get balance;
  @override
  String get name;
  @override
  String get mobile;
  @override
  String get email;
  @override
  String get idNumber;
  @override
  String get idCardThumb;
  @override // 1: approved, 2: requested, else: make request services/permission
  int get addPrice;
  @override
  bool get verificationStatus;
  @override
  bool get emailVerificationStatus;
  @override
  String get profileImage;
  @override
  List<ServiceTypeModel> get offeredServices;
  @override
  ProfileDetailModel? get detail;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
