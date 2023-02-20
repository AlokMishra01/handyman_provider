// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_package_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServicePackageModel _$ServicePackageModelFromJson(Map<String, dynamic> json) {
  return _ServicePackageModel.fromJson(json);
}

/// @nodoc
mixin _$ServicePackageModel {
  bool get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  ServiceDataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicePackageModelCopyWith<ServicePackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicePackageModelCopyWith<$Res> {
  factory $ServicePackageModelCopyWith(
          ServicePackageModel value, $Res Function(ServicePackageModel) then) =
      _$ServicePackageModelCopyWithImpl<$Res, ServicePackageModel>;
  @useResult
  $Res call({bool status, String msg, ServiceDataModel data});

  $ServiceDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$ServicePackageModelCopyWithImpl<$Res, $Val extends ServicePackageModel>
    implements $ServicePackageModelCopyWith<$Res> {
  _$ServicePackageModelCopyWithImpl(this._value, this._then);

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
              as ServiceDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceDataModelCopyWith<$Res> get data {
    return $ServiceDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ServicePackageModelCopyWith<$Res>
    implements $ServicePackageModelCopyWith<$Res> {
  factory _$$_ServicePackageModelCopyWith(_$_ServicePackageModel value,
          $Res Function(_$_ServicePackageModel) then) =
      __$$_ServicePackageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String msg, ServiceDataModel data});

  @override
  $ServiceDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ServicePackageModelCopyWithImpl<$Res>
    extends _$ServicePackageModelCopyWithImpl<$Res, _$_ServicePackageModel>
    implements _$$_ServicePackageModelCopyWith<$Res> {
  __$$_ServicePackageModelCopyWithImpl(_$_ServicePackageModel _value,
      $Res Function(_$_ServicePackageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$_ServicePackageModel(
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
              as ServiceDataModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ServicePackageModel implements _ServicePackageModel {
  const _$_ServicePackageModel(
      {this.status = true, this.msg = '', required this.data});

  factory _$_ServicePackageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServicePackageModelFromJson(json);

  @override
  @JsonKey()
  final bool status;
  @override
  @JsonKey()
  final String msg;
  @override
  final ServiceDataModel data;

  @override
  String toString() {
    return 'ServicePackageModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServicePackageModel &&
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
  _$$_ServicePackageModelCopyWith<_$_ServicePackageModel> get copyWith =>
      __$$_ServicePackageModelCopyWithImpl<_$_ServicePackageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServicePackageModelToJson(
      this,
    );
  }
}

abstract class _ServicePackageModel implements ServicePackageModel {
  const factory _ServicePackageModel(
      {final bool status,
      final String msg,
      required final ServiceDataModel data}) = _$_ServicePackageModel;

  factory _ServicePackageModel.fromJson(Map<String, dynamic> json) =
      _$_ServicePackageModel.fromJson;

  @override
  bool get status;
  @override
  String get msg;
  @override
  ServiceDataModel get data;
  @override
  @JsonKey(ignore: true)
  _$$_ServicePackageModelCopyWith<_$_ServicePackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceDataModel _$ServiceDataModelFromJson(Map<String, dynamic> json) {
  return _ServiceDataModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceDataModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  List<Package> get packages => throw _privateConstructorUsedError;
  List<ProfessionalService> get professionalServices =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceDataModelCopyWith<ServiceDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDataModelCopyWith<$Res> {
  factory $ServiceDataModelCopyWith(
          ServiceDataModel value, $Res Function(ServiceDataModel) then) =
      _$ServiceDataModelCopyWithImpl<$Res, ServiceDataModel>;
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
      String icon,
      List<Package> packages,
      List<ProfessionalService> professionalServices});
}

/// @nodoc
class _$ServiceDataModelCopyWithImpl<$Res, $Val extends ServiceDataModel>
    implements $ServiceDataModelCopyWith<$Res> {
  _$ServiceDataModelCopyWithImpl(this._value, this._then);

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
    Object? packages = null,
    Object? professionalServices = null,
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
      packages: null == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<Package>,
      professionalServices: null == professionalServices
          ? _value.professionalServices
          : professionalServices // ignore: cast_nullable_to_non_nullable
              as List<ProfessionalService>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceDataModelCopyWith<$Res>
    implements $ServiceDataModelCopyWith<$Res> {
  factory _$$_ServiceDataModelCopyWith(
          _$_ServiceDataModel value, $Res Function(_$_ServiceDataModel) then) =
      __$$_ServiceDataModelCopyWithImpl<$Res>;
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
      String icon,
      List<Package> packages,
      List<ProfessionalService> professionalServices});
}

/// @nodoc
class __$$_ServiceDataModelCopyWithImpl<$Res>
    extends _$ServiceDataModelCopyWithImpl<$Res, _$_ServiceDataModel>
    implements _$$_ServiceDataModelCopyWith<$Res> {
  __$$_ServiceDataModelCopyWithImpl(
      _$_ServiceDataModel _value, $Res Function(_$_ServiceDataModel) _then)
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
    Object? packages = null,
    Object? professionalServices = null,
  }) {
    return _then(_$_ServiceDataModel(
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
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<Package>,
      professionalServices: null == professionalServices
          ? _value._professionalServices
          : professionalServices // ignore: cast_nullable_to_non_nullable
              as List<ProfessionalService>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ServiceDataModel implements _ServiceDataModel {
  const _$_ServiceDataModel(
      {required this.id,
      this.title = '',
      this.type = '',
      this.rating = 0,
      this.cost = '',
      this.discount = '',
      this.duration = '',
      this.description = '',
      this.icon = '',
      final List<Package> packages = const [],
      final List<ProfessionalService> professionalServices = const []})
      : _packages = packages,
        _professionalServices = professionalServices;

  factory _$_ServiceDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceDataModelFromJson(json);

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
  final List<Package> _packages;
  @override
  @JsonKey()
  List<Package> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  final List<ProfessionalService> _professionalServices;
  @override
  @JsonKey()
  List<ProfessionalService> get professionalServices {
    if (_professionalServices is EqualUnmodifiableListView)
      return _professionalServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_professionalServices);
  }

  @override
  String toString() {
    return 'ServiceDataModel(id: $id, title: $title, type: $type, rating: $rating, cost: $cost, discount: $discount, duration: $duration, description: $description, icon: $icon, packages: $packages, professionalServices: $professionalServices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceDataModel &&
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
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality().equals(other._packages, _packages) &&
            const DeepCollectionEquality()
                .equals(other._professionalServices, _professionalServices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      type,
      rating,
      cost,
      discount,
      duration,
      description,
      icon,
      const DeepCollectionEquality().hash(_packages),
      const DeepCollectionEquality().hash(_professionalServices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceDataModelCopyWith<_$_ServiceDataModel> get copyWith =>
      __$$_ServiceDataModelCopyWithImpl<_$_ServiceDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceDataModelToJson(
      this,
    );
  }
}

abstract class _ServiceDataModel implements ServiceDataModel {
  const factory _ServiceDataModel(
          {required final int id,
          final String title,
          final String type,
          final int rating,
          final String cost,
          final String discount,
          final String duration,
          final String description,
          final String icon,
          final List<Package> packages,
          final List<ProfessionalService> professionalServices}) =
      _$_ServiceDataModel;

  factory _ServiceDataModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceDataModel.fromJson;

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
  List<Package> get packages;
  @override
  List<ProfessionalService> get professionalServices;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceDataModelCopyWith<_$_ServiceDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Package _$PackageFromJson(Map<String, dynamic> json) {
  return _Package.fromJson(json);
}

/// @nodoc
mixin _$Package {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageCopyWith<Package> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageCopyWith<$Res> {
  factory $PackageCopyWith(Package value, $Res Function(Package) then) =
      _$PackageCopyWithImpl<$Res, Package>;
  @useResult
  $Res call(
      {int id,
      String title,
      String duration,
      String cost,
      String discount,
      String description,
      String icon,
      int rating});
}

/// @nodoc
class _$PackageCopyWithImpl<$Res, $Val extends Package>
    implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? duration = null,
    Object? cost = null,
    Object? discount = null,
    Object? description = null,
    Object? icon = null,
    Object? rating = null,
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$$_PackageCopyWith(
          _$_Package value, $Res Function(_$_Package) then) =
      __$$_PackageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String duration,
      String cost,
      String discount,
      String description,
      String icon,
      int rating});
}

/// @nodoc
class __$$_PackageCopyWithImpl<$Res>
    extends _$PackageCopyWithImpl<$Res, _$_Package>
    implements _$$_PackageCopyWith<$Res> {
  __$$_PackageCopyWithImpl(_$_Package _value, $Res Function(_$_Package) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? duration = null,
    Object? cost = null,
    Object? discount = null,
    Object? description = null,
    Object? icon = null,
    Object? rating = null,
  }) {
    return _then(_$_Package(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Package implements _Package {
  const _$_Package(
      {required this.id,
      this.title = '',
      this.duration = '',
      this.cost = '',
      this.discount = '',
      this.description = '',
      this.icon = '',
      this.rating = 0});

  factory _$_Package.fromJson(Map<String, dynamic> json) =>
      _$$_PackageFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String duration;
  @override
  @JsonKey()
  final String cost;
  @override
  @JsonKey()
  final String discount;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String icon;
  @override
  @JsonKey()
  final int rating;

  @override
  String toString() {
    return 'Package(id: $id, title: $title, duration: $duration, cost: $cost, discount: $discount, description: $description, icon: $icon, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Package &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, duration, cost,
      discount, description, icon, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageCopyWith<_$_Package> get copyWith =>
      __$$_PackageCopyWithImpl<_$_Package>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageToJson(
      this,
    );
  }
}

abstract class _Package implements Package {
  const factory _Package(
      {required final int id,
      final String title,
      final String duration,
      final String cost,
      final String discount,
      final String description,
      final String icon,
      final int rating}) = _$_Package;

  factory _Package.fromJson(Map<String, dynamic> json) = _$_Package.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get duration;
  @override
  String get cost;
  @override
  String get discount;
  @override
  String get description;
  @override
  String get icon;
  @override
  int get rating;
  @override
  @JsonKey(ignore: true)
  _$$_PackageCopyWith<_$_Package> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfessionalService _$ProfessionalServiceFromJson(Map<String, dynamic> json) {
  return _ProfessionalService.fromJson(json);
}

/// @nodoc
mixin _$ProfessionalService {
  int get professionalId => throw _privateConstructorUsedError;
  String get professionalName => throw _privateConstructorUsedError;
  String get professionalImage => throw _privateConstructorUsedError;
  int get serviceId => throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfessionalServiceCopyWith<ProfessionalService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessionalServiceCopyWith<$Res> {
  factory $ProfessionalServiceCopyWith(
          ProfessionalService value, $Res Function(ProfessionalService) then) =
      _$ProfessionalServiceCopyWithImpl<$Res, ProfessionalService>;
  @useResult
  $Res call(
      {int professionalId,
      String professionalName,
      String professionalImage,
      int serviceId,
      String serviceName,
      String price,
      String duration,
      String discount,
      String description});
}

/// @nodoc
class _$ProfessionalServiceCopyWithImpl<$Res, $Val extends ProfessionalService>
    implements $ProfessionalServiceCopyWith<$Res> {
  _$ProfessionalServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? professionalId = null,
    Object? professionalName = null,
    Object? professionalImage = null,
    Object? serviceId = null,
    Object? serviceName = null,
    Object? price = null,
    Object? duration = null,
    Object? discount = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      professionalId: null == professionalId
          ? _value.professionalId
          : professionalId // ignore: cast_nullable_to_non_nullable
              as int,
      professionalName: null == professionalName
          ? _value.professionalName
          : professionalName // ignore: cast_nullable_to_non_nullable
              as String,
      professionalImage: null == professionalImage
          ? _value.professionalImage
          : professionalImage // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfessionalServiceCopyWith<$Res>
    implements $ProfessionalServiceCopyWith<$Res> {
  factory _$$_ProfessionalServiceCopyWith(_$_ProfessionalService value,
          $Res Function(_$_ProfessionalService) then) =
      __$$_ProfessionalServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int professionalId,
      String professionalName,
      String professionalImage,
      int serviceId,
      String serviceName,
      String price,
      String duration,
      String discount,
      String description});
}

/// @nodoc
class __$$_ProfessionalServiceCopyWithImpl<$Res>
    extends _$ProfessionalServiceCopyWithImpl<$Res, _$_ProfessionalService>
    implements _$$_ProfessionalServiceCopyWith<$Res> {
  __$$_ProfessionalServiceCopyWithImpl(_$_ProfessionalService _value,
      $Res Function(_$_ProfessionalService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? professionalId = null,
    Object? professionalName = null,
    Object? professionalImage = null,
    Object? serviceId = null,
    Object? serviceName = null,
    Object? price = null,
    Object? duration = null,
    Object? discount = null,
    Object? description = null,
  }) {
    return _then(_$_ProfessionalService(
      professionalId: null == professionalId
          ? _value.professionalId
          : professionalId // ignore: cast_nullable_to_non_nullable
              as int,
      professionalName: null == professionalName
          ? _value.professionalName
          : professionalName // ignore: cast_nullable_to_non_nullable
              as String,
      professionalImage: null == professionalImage
          ? _value.professionalImage
          : professionalImage // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ProfessionalService implements _ProfessionalService {
  const _$_ProfessionalService(
      {required this.professionalId,
      this.professionalName = '',
      this.professionalImage = '',
      required this.serviceId,
      this.serviceName = '',
      this.price = '',
      this.duration = '',
      this.discount = '',
      this.description = ''});

  factory _$_ProfessionalService.fromJson(Map<String, dynamic> json) =>
      _$$_ProfessionalServiceFromJson(json);

  @override
  final int professionalId;
  @override
  @JsonKey()
  final String professionalName;
  @override
  @JsonKey()
  final String professionalImage;
  @override
  final int serviceId;
  @override
  @JsonKey()
  final String serviceName;
  @override
  @JsonKey()
  final String price;
  @override
  @JsonKey()
  final String duration;
  @override
  @JsonKey()
  final String discount;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'ProfessionalService(professionalId: $professionalId, professionalName: $professionalName, professionalImage: $professionalImage, serviceId: $serviceId, serviceName: $serviceName, price: $price, duration: $duration, discount: $discount, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfessionalService &&
            (identical(other.professionalId, professionalId) ||
                other.professionalId == professionalId) &&
            (identical(other.professionalName, professionalName) ||
                other.professionalName == professionalName) &&
            (identical(other.professionalImage, professionalImage) ||
                other.professionalImage == professionalImage) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      professionalId,
      professionalName,
      professionalImage,
      serviceId,
      serviceName,
      price,
      duration,
      discount,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfessionalServiceCopyWith<_$_ProfessionalService> get copyWith =>
      __$$_ProfessionalServiceCopyWithImpl<_$_ProfessionalService>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfessionalServiceToJson(
      this,
    );
  }
}

abstract class _ProfessionalService implements ProfessionalService {
  const factory _ProfessionalService(
      {required final int professionalId,
      final String professionalName,
      final String professionalImage,
      required final int serviceId,
      final String serviceName,
      final String price,
      final String duration,
      final String discount,
      final String description}) = _$_ProfessionalService;

  factory _ProfessionalService.fromJson(Map<String, dynamic> json) =
      _$_ProfessionalService.fromJson;

  @override
  int get professionalId;
  @override
  String get professionalName;
  @override
  String get professionalImage;
  @override
  int get serviceId;
  @override
  String get serviceName;
  @override
  String get price;
  @override
  String get duration;
  @override
  String get discount;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ProfessionalServiceCopyWith<_$_ProfessionalService> get copyWith =>
      throw _privateConstructorUsedError;
}
