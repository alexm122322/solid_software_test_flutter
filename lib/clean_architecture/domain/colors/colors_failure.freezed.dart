// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colors_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ColorsFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedColorsFailure value) unexpected,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedColorsFailure value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedColorsFailure value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorsFailureCopyWith<$Res> {
  factory $ColorsFailureCopyWith(
          ColorsFailure value, $Res Function(ColorsFailure) then) =
      _$ColorsFailureCopyWithImpl<$Res, ColorsFailure>;
}

/// @nodoc
class _$ColorsFailureCopyWithImpl<$Res, $Val extends ColorsFailure>
    implements $ColorsFailureCopyWith<$Res> {
  _$ColorsFailureCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnexpectedColorsFailureImplCopyWith<$Res> {
  factory _$$UnexpectedColorsFailureImplCopyWith(
          _$UnexpectedColorsFailureImpl value,
          $Res Function(_$UnexpectedColorsFailureImpl) then) =
      __$$UnexpectedColorsFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedColorsFailureImplCopyWithImpl<$Res>
    extends _$ColorsFailureCopyWithImpl<$Res, _$UnexpectedColorsFailureImpl>
    implements _$$UnexpectedColorsFailureImplCopyWith<$Res> {
  __$$UnexpectedColorsFailureImplCopyWithImpl(
      _$UnexpectedColorsFailureImpl _value,
      $Res Function(_$UnexpectedColorsFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnexpectedColorsFailureImpl implements UnexpectedColorsFailure {
  const _$UnexpectedColorsFailureImpl();

  @override
  String toString() {
    return 'ColorsFailure.unexpected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedColorsFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedColorsFailure value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedColorsFailure value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedColorsFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedColorsFailure implements ColorsFailure {
  const factory UnexpectedColorsFailure() = _$UnexpectedColorsFailureImpl;
}
