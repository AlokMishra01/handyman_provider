// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyServiceModel _$MyServiceModelFromJson(Map<String, dynamic> json) {
  return _MyServiceModel.fromJson(json);
}

/// @nodoc
mixin _$MyServiceModel {
  List<ServiceModel> get data => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyServiceModelCopyWith<MyServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyServiceModelCopyWith<$Res> {
  factory $MyServiceModelCopyWith(
          MyServiceModel value, $Res Function(MyServiceModel) then) =
      _$MyServiceModelCopyWithImpl<$Res, MyServiceModel>;
  @useResult
  $Res call({List<ServiceModel> data, Links? links, Meta? meta});

  $LinksCopyWith<$Res>? get links;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$MyServiceModelCopyWithImpl<$Res, $Val extends MyServiceModel>
    implements $MyServiceModelCopyWith<$Res> {
  _$MyServiceModelCopyWithImpl(this._value, this._then);

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
              as List<ServiceModel>,
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
abstract class _$$_MyServiceModelCopyWith<$Res>
    implements $MyServiceModelCopyWith<$Res> {
  factory _$$_MyServiceModelCopyWith(
          _$_MyServiceModel value, $Res Function(_$_MyServiceModel) then) =
      __$$_MyServiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ServiceModel> data, Links? links, Meta? meta});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_MyServiceModelCopyWithImpl<$Res>
    extends _$MyServiceModelCopyWithImpl<$Res, _$_MyServiceModel>
    implements _$$_MyServiceModelCopyWith<$Res> {
  __$$_MyServiceModelCopyWithImpl(
      _$_MyServiceModel _value, $Res Function(_$_MyServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_MyServiceModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
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
class _$_MyServiceModel implements _MyServiceModel {
  const _$_MyServiceModel(
      {final List<ServiceModel> data = const [], this.links, this.meta})
      : _data = data;

  factory _$_MyServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_MyServiceModelFromJson(json);

  final List<ServiceModel> _data;
  @override
  @JsonKey()
  List<ServiceModel> get data {
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
    return 'MyServiceModel(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyServiceModel &&
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
  _$$_MyServiceModelCopyWith<_$_MyServiceModel> get copyWith =>
      __$$_MyServiceModelCopyWithImpl<_$_MyServiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyServiceModelToJson(
      this,
    );
  }
}

abstract class _MyServiceModel implements MyServiceModel {
  const factory _MyServiceModel(
      {final List<ServiceModel> data,
      final Links? links,
      final Meta? meta}) = _$_MyServiceModel;

  factory _MyServiceModel.fromJson(Map<String, dynamic> json) =
      _$_MyServiceModel.fromJson;

  @override
  List<ServiceModel> get data;
  @override
  Links? get links;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_MyServiceModelCopyWith<_$_MyServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceModel {
  int get id => throw _privateConstructorUsedError;
  int get serviceId => throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res, ServiceModel>;
  @useResult
  $Res call(
      {int id,
      int serviceId,
      String serviceName,
      String price,
      String duration,
      String discount,
      String description});
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res, $Val extends ServiceModel>
    implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serviceId = null,
    Object? serviceName = null,
    Object? price = null,
    Object? duration = null,
    Object? discount = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_ServiceModelCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$$_ServiceModelCopyWith(
          _$_ServiceModel value, $Res Function(_$_ServiceModel) then) =
      __$$_ServiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int serviceId,
      String serviceName,
      String price,
      String duration,
      String discount,
      String description});
}

/// @nodoc
class __$$_ServiceModelCopyWithImpl<$Res>
    extends _$ServiceModelCopyWithImpl<$Res, _$_ServiceModel>
    implements _$$_ServiceModelCopyWith<$Res> {
  __$$_ServiceModelCopyWithImpl(
      _$_ServiceModel _value, $Res Function(_$_ServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serviceId = null,
    Object? serviceName = null,
    Object? price = null,
    Object? duration = null,
    Object? discount = null,
    Object? description = null,
  }) {
    return _then(_$_ServiceModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_ServiceModel implements _ServiceModel {
  const _$_ServiceModel(
      {this.id = -1,
      this.serviceId = -1,
      this.serviceName = '',
      this.price = '',
      this.duration = '',
      this.discount = '',
      this.description = ''});

  factory _$_ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
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
    return 'ServiceModel(id: $id, serviceId: $serviceId, serviceName: $serviceName, price: $price, duration: $duration, discount: $discount, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceModel &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(runtimeType, id, serviceId, serviceName,
      price, duration, discount, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      __$$_ServiceModelCopyWithImpl<_$_ServiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceModelToJson(
      this,
    );
  }
}

abstract class _ServiceModel implements ServiceModel {
  const factory _ServiceModel(
      {final int id,
      final int serviceId,
      final String serviceName,
      final String price,
      final String duration,
      final String discount,
      final String description}) = _$_ServiceModel;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceModel.fromJson;

  @override
  int get id;
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
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
