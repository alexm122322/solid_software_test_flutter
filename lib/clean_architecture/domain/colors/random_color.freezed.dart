// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RandomColor {
  int get colorValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomColorCopyWith<RandomColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomColorCopyWith<$Res> {
  factory $RandomColorCopyWith(
          RandomColor value, $Res Function(RandomColor) then) =
      _$RandomColorCopyWithImpl<$Res, RandomColor>;

  @useResult
  $Res call({int colorValue});
}

/// @nodoc
class _$RandomColorCopyWithImpl<$Res, $Val extends RandomColor>
    implements $RandomColorCopyWith<$Res> {
  _$RandomColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorValue = null,
  }) {
    return _then(_value.copyWith(
      colorValue: null == colorValue
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomColorImplCopyWith<$Res>
    implements $RandomColorCopyWith<$Res> {
  factory _$$RandomColorImplCopyWith(
          _$RandomColorImpl value, $Res Function(_$RandomColorImpl) then) =
      __$$RandomColorImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({int colorValue});
}

/// @nodoc
class __$$RandomColorImplCopyWithImpl<$Res>
    extends _$RandomColorCopyWithImpl<$Res, _$RandomColorImpl>
    implements _$$RandomColorImplCopyWith<$Res> {
  __$$RandomColorImplCopyWithImpl(
      _$RandomColorImpl _value, $Res Function(_$RandomColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorValue = null,
  }) {
    return _then(_$RandomColorImpl(
      colorValue: null == colorValue
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RandomColorImpl implements _RandomColor {
  const _$RandomColorImpl({required this.colorValue});

  @override
  final int colorValue;

  @override
  String toString() {
    return 'RandomColor(colorValue: $colorValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomColorImpl &&
            (identical(other.colorValue, colorValue) ||
                other.colorValue == colorValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomColorImplCopyWith<_$RandomColorImpl> get copyWith =>
      __$$RandomColorImplCopyWithImpl<_$RandomColorImpl>(this, _$identity);
}

abstract class _RandomColor implements RandomColor {
  const factory _RandomColor({required final int colorValue}) =
      _$RandomColorImpl;

  @override
  int get colorValue;

  @override
  @JsonKey(ignore: true)
  _$$RandomColorImplCopyWith<_$RandomColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
