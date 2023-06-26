// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_save_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartSaveModel _$CartSaveModelFromJson(Map<String, dynamic> json) {
  return _CartSaveModel.fromJson(json);
}

/// @nodoc
mixin _$CartSaveModel {
  List<CartModel> get carts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartSaveModelCopyWith<CartSaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartSaveModelCopyWith<$Res> {
  factory $CartSaveModelCopyWith(
          CartSaveModel value, $Res Function(CartSaveModel) then) =
      _$CartSaveModelCopyWithImpl<$Res, CartSaveModel>;
  @useResult
  $Res call({List<CartModel> carts});
}

/// @nodoc
class _$CartSaveModelCopyWithImpl<$Res, $Val extends CartSaveModel>
    implements $CartSaveModelCopyWith<$Res> {
  _$CartSaveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carts = null,
  }) {
    return _then(_value.copyWith(
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartSaveModelCopyWith<$Res>
    implements $CartSaveModelCopyWith<$Res> {
  factory _$$_CartSaveModelCopyWith(
          _$_CartSaveModel value, $Res Function(_$_CartSaveModel) then) =
      __$$_CartSaveModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartModel> carts});
}

/// @nodoc
class __$$_CartSaveModelCopyWithImpl<$Res>
    extends _$CartSaveModelCopyWithImpl<$Res, _$_CartSaveModel>
    implements _$$_CartSaveModelCopyWith<$Res> {
  __$$_CartSaveModelCopyWithImpl(
      _$_CartSaveModel _value, $Res Function(_$_CartSaveModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carts = null,
  }) {
    return _then(_$_CartSaveModel(
      carts: null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_CartSaveModel implements _CartSaveModel {
  const _$_CartSaveModel({final List<CartModel> carts = const []})
      : _carts = carts;

  factory _$_CartSaveModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartSaveModelFromJson(json);

  final List<CartModel> _carts;
  @override
  @JsonKey()
  List<CartModel> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  String toString() {
    return 'CartSaveModel(carts: $carts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartSaveModel &&
            const DeepCollectionEquality().equals(other._carts, _carts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_carts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartSaveModelCopyWith<_$_CartSaveModel> get copyWith =>
      __$$_CartSaveModelCopyWithImpl<_$_CartSaveModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartSaveModelToJson(
      this,
    );
  }
}

abstract class _CartSaveModel implements CartSaveModel {
  const factory _CartSaveModel({final List<CartModel> carts}) =
      _$_CartSaveModel;

  factory _CartSaveModel.fromJson(Map<String, dynamic> json) =
      _$_CartSaveModel.fromJson;

  @override
  List<CartModel> get carts;
  @override
  @JsonKey(ignore: true)
  _$$_CartSaveModelCopyWith<_$_CartSaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}
