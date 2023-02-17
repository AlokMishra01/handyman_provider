// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'documents_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentsModel _$DocumentsModelFromJson(Map<String, dynamic> json) {
  return _DocumentsModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentsModel {
  String get message => throw _privateConstructorUsedError;
  List<DocumentModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentsModelCopyWith<DocumentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsModelCopyWith<$Res> {
  factory $DocumentsModelCopyWith(
          DocumentsModel value, $Res Function(DocumentsModel) then) =
      _$DocumentsModelCopyWithImpl<$Res, DocumentsModel>;
  @useResult
  $Res call({String message, List<DocumentModel> data});
}

/// @nodoc
class _$DocumentsModelCopyWithImpl<$Res, $Val extends DocumentsModel>
    implements $DocumentsModelCopyWith<$Res> {
  _$DocumentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DocumentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentsModelCopyWith<$Res>
    implements $DocumentsModelCopyWith<$Res> {
  factory _$$_DocumentsModelCopyWith(
          _$_DocumentsModel value, $Res Function(_$_DocumentsModel) then) =
      __$$_DocumentsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<DocumentModel> data});
}

/// @nodoc
class __$$_DocumentsModelCopyWithImpl<$Res>
    extends _$DocumentsModelCopyWithImpl<$Res, _$_DocumentsModel>
    implements _$$_DocumentsModelCopyWith<$Res> {
  __$$_DocumentsModelCopyWithImpl(
      _$_DocumentsModel _value, $Res Function(_$_DocumentsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$_DocumentsModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DocumentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentsModel implements _DocumentsModel {
  const _$_DocumentsModel(
      {this.message = '', final List<DocumentModel> data = const []})
      : _data = data;

  factory _$_DocumentsModel.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentsModelFromJson(json);

  @override
  @JsonKey()
  final String message;
  final List<DocumentModel> _data;
  @override
  @JsonKey()
  List<DocumentModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DocumentsModel(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentsModel &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentsModelCopyWith<_$_DocumentsModel> get copyWith =>
      __$$_DocumentsModelCopyWithImpl<_$_DocumentsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentsModelToJson(
      this,
    );
  }
}

abstract class _DocumentsModel implements DocumentsModel {
  const factory _DocumentsModel(
      {final String message,
      final List<DocumentModel> data}) = _$_DocumentsModel;

  factory _DocumentsModel.fromJson(Map<String, dynamic> json) =
      _$_DocumentsModel.fromJson;

  @override
  String get message;
  @override
  List<DocumentModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentsModelCopyWith<_$_DocumentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DocumentModel _$DocumentModelFromJson(Map<String, dynamic> json) {
  return _DocumentModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get documentType => throw _privateConstructorUsedError;
  String get documentPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentModelCopyWith<DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentModelCopyWith<$Res> {
  factory $DocumentModelCopyWith(
          DocumentModel value, $Res Function(DocumentModel) then) =
      _$DocumentModelCopyWithImpl<$Res, DocumentModel>;
  @useResult
  $Res call({int id, String title, String documentType, String documentPath});
}

/// @nodoc
class _$DocumentModelCopyWithImpl<$Res, $Val extends DocumentModel>
    implements $DocumentModelCopyWith<$Res> {
  _$DocumentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? documentType = null,
    Object? documentPath = null,
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
      documentType: null == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      documentPath: null == documentPath
          ? _value.documentPath
          : documentPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentModelCopyWith<$Res>
    implements $DocumentModelCopyWith<$Res> {
  factory _$$_DocumentModelCopyWith(
          _$_DocumentModel value, $Res Function(_$_DocumentModel) then) =
      __$$_DocumentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String documentType, String documentPath});
}

/// @nodoc
class __$$_DocumentModelCopyWithImpl<$Res>
    extends _$DocumentModelCopyWithImpl<$Res, _$_DocumentModel>
    implements _$$_DocumentModelCopyWith<$Res> {
  __$$_DocumentModelCopyWithImpl(
      _$_DocumentModel _value, $Res Function(_$_DocumentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? documentType = null,
    Object? documentPath = null,
  }) {
    return _then(_$_DocumentModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      documentType: null == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      documentPath: null == documentPath
          ? _value.documentPath
          : documentPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentModel implements _DocumentModel {
  const _$_DocumentModel(
      {this.id = -1,
      this.title = '',
      this.documentType = '',
      this.documentPath = ''});

  factory _$_DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String documentType;
  @override
  @JsonKey()
  final String documentPath;

  @override
  String toString() {
    return 'DocumentModel(id: $id, title: $title, documentType: $documentType, documentPath: $documentPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.documentPath, documentPath) ||
                other.documentPath == documentPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, documentType, documentPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentModelCopyWith<_$_DocumentModel> get copyWith =>
      __$$_DocumentModelCopyWithImpl<_$_DocumentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentModelToJson(
      this,
    );
  }
}

abstract class _DocumentModel implements DocumentModel {
  const factory _DocumentModel(
      {final int id,
      final String title,
      final String documentType,
      final String documentPath}) = _$_DocumentModel;

  factory _DocumentModel.fromJson(Map<String, dynamic> json) =
      _$_DocumentModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get documentType;
  @override
  String get documentPath;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentModelCopyWith<_$_DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
