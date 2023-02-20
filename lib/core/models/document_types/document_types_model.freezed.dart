// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_types_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentTypesModel _$DocumentTypesModelFromJson(Map<String, dynamic> json) {
  return _DocumentTypesModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentTypesModel {
  String get message => throw _privateConstructorUsedError;
  DocumentTypeModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentTypesModelCopyWith<DocumentTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentTypesModelCopyWith<$Res> {
  factory $DocumentTypesModelCopyWith(
          DocumentTypesModel value, $Res Function(DocumentTypesModel) then) =
      _$DocumentTypesModelCopyWithImpl<$Res, DocumentTypesModel>;
  @useResult
  $Res call({String message, DocumentTypeModel? data});

  $DocumentTypeModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$DocumentTypesModelCopyWithImpl<$Res, $Val extends DocumentTypesModel>
    implements $DocumentTypesModelCopyWith<$Res> {
  _$DocumentTypesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DocumentTypeModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentTypeModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DocumentTypeModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DocumentTypesModelCopyWith<$Res>
    implements $DocumentTypesModelCopyWith<$Res> {
  factory _$$_DocumentTypesModelCopyWith(_$_DocumentTypesModel value,
          $Res Function(_$_DocumentTypesModel) then) =
      __$$_DocumentTypesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, DocumentTypeModel? data});

  @override
  $DocumentTypeModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DocumentTypesModelCopyWithImpl<$Res>
    extends _$DocumentTypesModelCopyWithImpl<$Res, _$_DocumentTypesModel>
    implements _$$_DocumentTypesModelCopyWith<$Res> {
  __$$_DocumentTypesModelCopyWithImpl(
      _$_DocumentTypesModel _value, $Res Function(_$_DocumentTypesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$_DocumentTypesModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DocumentTypeModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_DocumentTypesModel implements _DocumentTypesModel {
  const _$_DocumentTypesModel({this.message = '', this.data});

  factory _$_DocumentTypesModel.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentTypesModelFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  final DocumentTypeModel? data;

  @override
  String toString() {
    return 'DocumentTypesModel(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentTypesModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentTypesModelCopyWith<_$_DocumentTypesModel> get copyWith =>
      __$$_DocumentTypesModelCopyWithImpl<_$_DocumentTypesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentTypesModelToJson(
      this,
    );
  }
}

abstract class _DocumentTypesModel implements DocumentTypesModel {
  const factory _DocumentTypesModel(
      {final String message,
      final DocumentTypeModel? data}) = _$_DocumentTypesModel;

  factory _DocumentTypesModel.fromJson(Map<String, dynamic> json) =
      _$_DocumentTypesModel.fromJson;

  @override
  String get message;
  @override
  DocumentTypeModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentTypesModelCopyWith<_$_DocumentTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DocumentTypeModel _$DocumentTypeModelFromJson(Map<String, dynamic> json) {
  return _DocumentTypeModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentTypeModel {
  String get citizen => throw _privateConstructorUsedError;
  String get certificate => throw _privateConstructorUsedError;
  String get license => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentTypeModelCopyWith<DocumentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentTypeModelCopyWith<$Res> {
  factory $DocumentTypeModelCopyWith(
          DocumentTypeModel value, $Res Function(DocumentTypeModel) then) =
      _$DocumentTypeModelCopyWithImpl<$Res, DocumentTypeModel>;
  @useResult
  $Res call({String citizen, String certificate, String license});
}

/// @nodoc
class _$DocumentTypeModelCopyWithImpl<$Res, $Val extends DocumentTypeModel>
    implements $DocumentTypeModelCopyWith<$Res> {
  _$DocumentTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? citizen = null,
    Object? certificate = null,
    Object? license = null,
  }) {
    return _then(_value.copyWith(
      citizen: null == citizen
          ? _value.citizen
          : citizen // ignore: cast_nullable_to_non_nullable
              as String,
      certificate: null == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as String,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentTypeModelCopyWith<$Res>
    implements $DocumentTypeModelCopyWith<$Res> {
  factory _$$_DocumentTypeModelCopyWith(_$_DocumentTypeModel value,
          $Res Function(_$_DocumentTypeModel) then) =
      __$$_DocumentTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String citizen, String certificate, String license});
}

/// @nodoc
class __$$_DocumentTypeModelCopyWithImpl<$Res>
    extends _$DocumentTypeModelCopyWithImpl<$Res, _$_DocumentTypeModel>
    implements _$$_DocumentTypeModelCopyWith<$Res> {
  __$$_DocumentTypeModelCopyWithImpl(
      _$_DocumentTypeModel _value, $Res Function(_$_DocumentTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? citizen = null,
    Object? certificate = null,
    Object? license = null,
  }) {
    return _then(_$_DocumentTypeModel(
      citizen: null == citizen
          ? _value.citizen
          : citizen // ignore: cast_nullable_to_non_nullable
              as String,
      certificate: null == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as String,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_DocumentTypeModel implements _DocumentTypeModel {
  const _$_DocumentTypeModel(
      {this.citizen = '', this.certificate = '', this.license = ''});

  factory _$_DocumentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentTypeModelFromJson(json);

  @override
  @JsonKey()
  final String citizen;
  @override
  @JsonKey()
  final String certificate;
  @override
  @JsonKey()
  final String license;

  @override
  String toString() {
    return 'DocumentTypeModel(citizen: $citizen, certificate: $certificate, license: $license)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentTypeModel &&
            (identical(other.citizen, citizen) || other.citizen == citizen) &&
            (identical(other.certificate, certificate) ||
                other.certificate == certificate) &&
            (identical(other.license, license) || other.license == license));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, citizen, certificate, license);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentTypeModelCopyWith<_$_DocumentTypeModel> get copyWith =>
      __$$_DocumentTypeModelCopyWithImpl<_$_DocumentTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentTypeModelToJson(
      this,
    );
  }
}

abstract class _DocumentTypeModel implements DocumentTypeModel {
  const factory _DocumentTypeModel(
      {final String citizen,
      final String certificate,
      final String license}) = _$_DocumentTypeModel;

  factory _DocumentTypeModel.fromJson(Map<String, dynamic> json) =
      _$_DocumentTypeModel.fromJson;

  @override
  String get citizen;
  @override
  String get certificate;
  @override
  String get license;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentTypeModelCopyWith<_$_DocumentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
