// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServicesModel _$ServicesModelFromJson(Map<String, dynamic> json) {
  return _ServicesModel.fromJson(json);
}

/// @nodoc
mixin _$ServicesModel {
  List<ServiceModel> get data => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicesModelCopyWith<ServicesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesModelCopyWith<$Res> {
  factory $ServicesModelCopyWith(
          ServicesModel value, $Res Function(ServicesModel) then) =
      _$ServicesModelCopyWithImpl<$Res, ServicesModel>;
  @useResult
  $Res call({List<ServiceModel> data, Links? links, Meta? meta});

  $LinksCopyWith<$Res>? get links;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ServicesModelCopyWithImpl<$Res, $Val extends ServicesModel>
    implements $ServicesModelCopyWith<$Res> {
  _$ServicesModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ServicesModelCopyWith<$Res>
    implements $ServicesModelCopyWith<$Res> {
  factory _$$_ServicesModelCopyWith(
          _$_ServicesModel value, $Res Function(_$_ServicesModel) then) =
      __$$_ServicesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ServiceModel> data, Links? links, Meta? meta});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_ServicesModelCopyWithImpl<$Res>
    extends _$ServicesModelCopyWithImpl<$Res, _$_ServicesModel>
    implements _$$_ServicesModelCopyWith<$Res> {
  __$$_ServicesModelCopyWithImpl(
      _$_ServicesModel _value, $Res Function(_$_ServicesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_ServicesModel(
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
class _$_ServicesModel implements _ServicesModel {
  const _$_ServicesModel(
      {final List<ServiceModel> data = const [], this.links, this.meta})
      : _data = data;

  factory _$_ServicesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServicesModelFromJson(json);

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
    return 'ServicesModel(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServicesModel &&
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
  _$$_ServicesModelCopyWith<_$_ServicesModel> get copyWith =>
      __$$_ServicesModelCopyWithImpl<_$_ServicesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServicesModelToJson(
      this,
    );
  }
}

abstract class _ServicesModel implements ServicesModel {
  const factory _ServicesModel(
      {final List<ServiceModel> data,
      final Links? links,
      final Meta? meta}) = _$_ServicesModel;

  factory _ServicesModel.fromJson(Map<String, dynamic> json) =
      _$_ServicesModel.fromJson;

  @override
  List<ServiceModel> get data;
  @override
  Links? get links;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_ServicesModelCopyWith<_$_ServicesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get serviceType => throw _privateConstructorUsedError;

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
      String title,
      String type,
      int rating,
      String cost,
      String discount,
      String duration,
      String description,
      String icon,
      String serviceType});
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
    Object? title = null,
    Object? type = null,
    Object? rating = null,
    Object? cost = null,
    Object? discount = null,
    Object? duration = null,
    Object? description = null,
    Object? icon = null,
    Object? serviceType = null,
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
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
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
      String title,
      String type,
      int rating,
      String cost,
      String discount,
      String duration,
      String description,
      String icon,
      String serviceType});
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
    Object? title = null,
    Object? type = null,
    Object? rating = null,
    Object? cost = null,
    Object? discount = null,
    Object? duration = null,
    Object? description = null,
    Object? icon = null,
    Object? serviceType = null,
  }) {
    return _then(_$_ServiceModel(
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
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ServiceModel implements _ServiceModel {
  const _$_ServiceModel(
      {this.id = -1,
      this.title = '',
      this.type = '',
      this.rating = 0,
      this.cost = '',
      this.discount = '',
      this.duration = '',
      this.description = '',
      this.icon = '',
      this.serviceType = ''});

  factory _$_ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceModelFromJson(json);

  @override
  @JsonKey()
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
  @JsonKey()
  final String serviceType;

  @override
  String toString() {
    return 'ServiceModel(id: $id, title: $title, type: $type, rating: $rating, cost: $cost, discount: $discount, duration: $duration, description: $description, icon: $icon, serviceType: $serviceType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceModel &&
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
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, type, rating, cost,
      discount, duration, description, icon, serviceType);

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
      final String title,
      final String type,
      final int rating,
      final String cost,
      final String discount,
      final String duration,
      final String description,
      final String icon,
      final String serviceType}) = _$_ServiceModel;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceModel.fromJson;

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
  String get serviceType;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
