// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() connected,
    required TResult Function() noConnected,
    required TResult Function(DateTime dateTime, String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? connected,
    TResult? Function()? noConnected,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? connected,
    TResult Function()? noConnected,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStateLoading value) loading,
    required TResult Function(SplashStateConnected value) connected,
    required TResult Function(SplashStateNoConnected value) noConnected,
    required TResult Function(SplashStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashStateLoading value)? loading,
    TResult? Function(SplashStateConnected value)? connected,
    TResult? Function(SplashStateNoConnected value)? noConnected,
    TResult? Function(SplashStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStateLoading value)? loading,
    TResult Function(SplashStateConnected value)? connected,
    TResult Function(SplashStateNoConnected value)? noConnected,
    TResult Function(SplashStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SplashStateLoadingCopyWith<$Res> {
  factory _$$SplashStateLoadingCopyWith(_$SplashStateLoading value,
          $Res Function(_$SplashStateLoading) then) =
      __$$SplashStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashStateLoadingCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashStateLoading>
    implements _$$SplashStateLoadingCopyWith<$Res> {
  __$$SplashStateLoadingCopyWithImpl(
      _$SplashStateLoading _value, $Res Function(_$SplashStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashStateLoading extends SplashStateLoading {
  _$SplashStateLoading() : super._();

  @override
  String toString() {
    return 'SplashState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() connected,
    required TResult Function() noConnected,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? connected,
    TResult? Function()? noConnected,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? connected,
    TResult Function()? noConnected,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStateLoading value) loading,
    required TResult Function(SplashStateConnected value) connected,
    required TResult Function(SplashStateNoConnected value) noConnected,
    required TResult Function(SplashStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashStateLoading value)? loading,
    TResult? Function(SplashStateConnected value)? connected,
    TResult? Function(SplashStateNoConnected value)? noConnected,
    TResult? Function(SplashStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStateLoading value)? loading,
    TResult Function(SplashStateConnected value)? connected,
    TResult Function(SplashStateNoConnected value)? noConnected,
    TResult Function(SplashStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SplashStateLoading extends SplashState {
  factory SplashStateLoading() = _$SplashStateLoading;
  SplashStateLoading._() : super._();
}

/// @nodoc
abstract class _$$SplashStateConnectedCopyWith<$Res> {
  factory _$$SplashStateConnectedCopyWith(_$SplashStateConnected value,
          $Res Function(_$SplashStateConnected) then) =
      __$$SplashStateConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashStateConnectedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashStateConnected>
    implements _$$SplashStateConnectedCopyWith<$Res> {
  __$$SplashStateConnectedCopyWithImpl(_$SplashStateConnected _value,
      $Res Function(_$SplashStateConnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashStateConnected extends SplashStateConnected {
  _$SplashStateConnected() : super._();

  @override
  String toString() {
    return 'SplashState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashStateConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() connected,
    required TResult Function() noConnected,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? connected,
    TResult? Function()? noConnected,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? connected,
    TResult Function()? noConnected,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStateLoading value) loading,
    required TResult Function(SplashStateConnected value) connected,
    required TResult Function(SplashStateNoConnected value) noConnected,
    required TResult Function(SplashStateFailed value) failed,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashStateLoading value)? loading,
    TResult? Function(SplashStateConnected value)? connected,
    TResult? Function(SplashStateNoConnected value)? noConnected,
    TResult? Function(SplashStateFailed value)? failed,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStateLoading value)? loading,
    TResult Function(SplashStateConnected value)? connected,
    TResult Function(SplashStateNoConnected value)? noConnected,
    TResult Function(SplashStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class SplashStateConnected extends SplashState {
  factory SplashStateConnected() = _$SplashStateConnected;
  SplashStateConnected._() : super._();
}

/// @nodoc
abstract class _$$SplashStateNoConnectedCopyWith<$Res> {
  factory _$$SplashStateNoConnectedCopyWith(_$SplashStateNoConnected value,
          $Res Function(_$SplashStateNoConnected) then) =
      __$$SplashStateNoConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashStateNoConnectedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashStateNoConnected>
    implements _$$SplashStateNoConnectedCopyWith<$Res> {
  __$$SplashStateNoConnectedCopyWithImpl(_$SplashStateNoConnected _value,
      $Res Function(_$SplashStateNoConnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashStateNoConnected extends SplashStateNoConnected {
  _$SplashStateNoConnected() : super._();

  @override
  String toString() {
    return 'SplashState.noConnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashStateNoConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() connected,
    required TResult Function() noConnected,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return noConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? connected,
    TResult? Function()? noConnected,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return noConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? connected,
    TResult Function()? noConnected,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (noConnected != null) {
      return noConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStateLoading value) loading,
    required TResult Function(SplashStateConnected value) connected,
    required TResult Function(SplashStateNoConnected value) noConnected,
    required TResult Function(SplashStateFailed value) failed,
  }) {
    return noConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashStateLoading value)? loading,
    TResult? Function(SplashStateConnected value)? connected,
    TResult? Function(SplashStateNoConnected value)? noConnected,
    TResult? Function(SplashStateFailed value)? failed,
  }) {
    return noConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStateLoading value)? loading,
    TResult Function(SplashStateConnected value)? connected,
    TResult Function(SplashStateNoConnected value)? noConnected,
    TResult Function(SplashStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (noConnected != null) {
      return noConnected(this);
    }
    return orElse();
  }
}

abstract class SplashStateNoConnected extends SplashState {
  factory SplashStateNoConnected() = _$SplashStateNoConnected;
  SplashStateNoConnected._() : super._();
}

/// @nodoc
abstract class _$$SplashStateFailedCopyWith<$Res> {
  factory _$$SplashStateFailedCopyWith(
          _$SplashStateFailed value, $Res Function(_$SplashStateFailed) then) =
      __$$SplashStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime, String message});
}

/// @nodoc
class __$$SplashStateFailedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashStateFailed>
    implements _$$SplashStateFailedCopyWith<$Res> {
  __$$SplashStateFailedCopyWithImpl(
      _$SplashStateFailed _value, $Res Function(_$SplashStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? message = null,
  }) {
    return _then(_$SplashStateFailed(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SplashStateFailed extends SplashStateFailed {
  _$SplashStateFailed({required this.dateTime, required this.message})
      : super._();

  @override
  final DateTime dateTime;
  @override
  final String message;

  @override
  String toString() {
    return 'SplashState.failed(dateTime: $dateTime, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashStateFailed &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashStateFailedCopyWith<_$SplashStateFailed> get copyWith =>
      __$$SplashStateFailedCopyWithImpl<_$SplashStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() connected,
    required TResult Function() noConnected,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return failed(dateTime, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? connected,
    TResult? Function()? noConnected,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return failed?.call(dateTime, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? connected,
    TResult Function()? noConnected,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(dateTime, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStateLoading value) loading,
    required TResult Function(SplashStateConnected value) connected,
    required TResult Function(SplashStateNoConnected value) noConnected,
    required TResult Function(SplashStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashStateLoading value)? loading,
    TResult? Function(SplashStateConnected value)? connected,
    TResult? Function(SplashStateNoConnected value)? noConnected,
    TResult? Function(SplashStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStateLoading value)? loading,
    TResult Function(SplashStateConnected value)? connected,
    TResult Function(SplashStateNoConnected value)? noConnected,
    TResult Function(SplashStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class SplashStateFailed extends SplashState {
  factory SplashStateFailed(
      {required final DateTime dateTime,
      required final String message}) = _$SplashStateFailed;
  SplashStateFailed._() : super._();

  DateTime get dateTime;
  String get message;
  @JsonKey(ignore: true)
  _$$SplashStateFailedCopyWith<_$SplashStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
