// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noSignIn,
    required TResult Function(User user) signIn,
    required TResult Function(DateTime dateTime, String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noSignIn,
    TResult? Function(User user)? signIn,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noSignIn,
    TResult Function(User user)? signIn,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateNoSignIn value) noSignIn,
    required TResult Function(ProfileStateSignIn value) signIn,
    required TResult Function(ProfileStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateNoSignIn value)? noSignIn,
    TResult? Function(ProfileStateSignIn value)? signIn,
    TResult? Function(ProfileStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateNoSignIn value)? noSignIn,
    TResult Function(ProfileStateSignIn value)? signIn,
    TResult Function(ProfileStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileStateLoadingCopyWith<$Res> {
  factory _$$ProfileStateLoadingCopyWith(_$ProfileStateLoading value,
          $Res Function(_$ProfileStateLoading) then) =
      __$$ProfileStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileStateLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateLoading>
    implements _$$ProfileStateLoadingCopyWith<$Res> {
  __$$ProfileStateLoadingCopyWithImpl(
      _$ProfileStateLoading _value, $Res Function(_$ProfileStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileStateLoading extends ProfileStateLoading {
  _$ProfileStateLoading() : super._();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noSignIn,
    required TResult Function(User user) signIn,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noSignIn,
    TResult? Function(User user)? signIn,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noSignIn,
    TResult Function(User user)? signIn,
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
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateNoSignIn value) noSignIn,
    required TResult Function(ProfileStateSignIn value) signIn,
    required TResult Function(ProfileStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateNoSignIn value)? noSignIn,
    TResult? Function(ProfileStateSignIn value)? signIn,
    TResult? Function(ProfileStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateNoSignIn value)? noSignIn,
    TResult Function(ProfileStateSignIn value)? signIn,
    TResult Function(ProfileStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileStateLoading extends ProfileState {
  factory ProfileStateLoading() = _$ProfileStateLoading;
  ProfileStateLoading._() : super._();
}

/// @nodoc
abstract class _$$ProfileStateNoSignInCopyWith<$Res> {
  factory _$$ProfileStateNoSignInCopyWith(_$ProfileStateNoSignIn value,
          $Res Function(_$ProfileStateNoSignIn) then) =
      __$$ProfileStateNoSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileStateNoSignInCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateNoSignIn>
    implements _$$ProfileStateNoSignInCopyWith<$Res> {
  __$$ProfileStateNoSignInCopyWithImpl(_$ProfileStateNoSignIn _value,
      $Res Function(_$ProfileStateNoSignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileStateNoSignIn extends ProfileStateNoSignIn {
  _$ProfileStateNoSignIn() : super._();

  @override
  String toString() {
    return 'ProfileState.noSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileStateNoSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noSignIn,
    required TResult Function(User user) signIn,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return noSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noSignIn,
    TResult? Function(User user)? signIn,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return noSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noSignIn,
    TResult Function(User user)? signIn,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (noSignIn != null) {
      return noSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateNoSignIn value) noSignIn,
    required TResult Function(ProfileStateSignIn value) signIn,
    required TResult Function(ProfileStateFailed value) failed,
  }) {
    return noSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateNoSignIn value)? noSignIn,
    TResult? Function(ProfileStateSignIn value)? signIn,
    TResult? Function(ProfileStateFailed value)? failed,
  }) {
    return noSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateNoSignIn value)? noSignIn,
    TResult Function(ProfileStateSignIn value)? signIn,
    TResult Function(ProfileStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (noSignIn != null) {
      return noSignIn(this);
    }
    return orElse();
  }
}

abstract class ProfileStateNoSignIn extends ProfileState {
  factory ProfileStateNoSignIn() = _$ProfileStateNoSignIn;
  ProfileStateNoSignIn._() : super._();
}

/// @nodoc
abstract class _$$ProfileStateSignInCopyWith<$Res> {
  factory _$$ProfileStateSignInCopyWith(_$ProfileStateSignIn value,
          $Res Function(_$ProfileStateSignIn) then) =
      __$$ProfileStateSignInCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$ProfileStateSignInCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateSignIn>
    implements _$$ProfileStateSignInCopyWith<$Res> {
  __$$ProfileStateSignInCopyWithImpl(
      _$ProfileStateSignIn _value, $Res Function(_$ProfileStateSignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ProfileStateSignIn(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$ProfileStateSignIn extends ProfileStateSignIn {
  _$ProfileStateSignIn({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileState.signIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateSignIn &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateSignInCopyWith<_$ProfileStateSignIn> get copyWith =>
      __$$ProfileStateSignInCopyWithImpl<_$ProfileStateSignIn>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noSignIn,
    required TResult Function(User user) signIn,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return signIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noSignIn,
    TResult? Function(User user)? signIn,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return signIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noSignIn,
    TResult Function(User user)? signIn,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateNoSignIn value) noSignIn,
    required TResult Function(ProfileStateSignIn value) signIn,
    required TResult Function(ProfileStateFailed value) failed,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateNoSignIn value)? noSignIn,
    TResult? Function(ProfileStateSignIn value)? signIn,
    TResult? Function(ProfileStateFailed value)? failed,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateNoSignIn value)? noSignIn,
    TResult Function(ProfileStateSignIn value)? signIn,
    TResult Function(ProfileStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class ProfileStateSignIn extends ProfileState {
  factory ProfileStateSignIn({required final User user}) = _$ProfileStateSignIn;
  ProfileStateSignIn._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$ProfileStateSignInCopyWith<_$ProfileStateSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileStateFailedCopyWith<$Res> {
  factory _$$ProfileStateFailedCopyWith(_$ProfileStateFailed value,
          $Res Function(_$ProfileStateFailed) then) =
      __$$ProfileStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime, String message});
}

/// @nodoc
class __$$ProfileStateFailedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateFailed>
    implements _$$ProfileStateFailedCopyWith<$Res> {
  __$$ProfileStateFailedCopyWithImpl(
      _$ProfileStateFailed _value, $Res Function(_$ProfileStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? message = null,
  }) {
    return _then(_$ProfileStateFailed(
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

class _$ProfileStateFailed extends ProfileStateFailed {
  _$ProfileStateFailed({required this.dateTime, required this.message})
      : super._();

  @override
  final DateTime dateTime;
  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.failed(dateTime: $dateTime, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateFailed &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateFailedCopyWith<_$ProfileStateFailed> get copyWith =>
      __$$ProfileStateFailedCopyWithImpl<_$ProfileStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noSignIn,
    required TResult Function(User user) signIn,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return failed(dateTime, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noSignIn,
    TResult? Function(User user)? signIn,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return failed?.call(dateTime, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noSignIn,
    TResult Function(User user)? signIn,
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
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateNoSignIn value) noSignIn,
    required TResult Function(ProfileStateSignIn value) signIn,
    required TResult Function(ProfileStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateNoSignIn value)? noSignIn,
    TResult? Function(ProfileStateSignIn value)? signIn,
    TResult? Function(ProfileStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateNoSignIn value)? noSignIn,
    TResult Function(ProfileStateSignIn value)? signIn,
    TResult Function(ProfileStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class ProfileStateFailed extends ProfileState {
  factory ProfileStateFailed(
      {required final DateTime dateTime,
      required final String message}) = _$ProfileStateFailed;
  ProfileStateFailed._() : super._();

  DateTime get dateTime;
  String get message;
  @JsonKey(ignore: true)
  _$$ProfileStateFailedCopyWith<_$ProfileStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
