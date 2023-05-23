// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picker_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PickerImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) initial,
    required TResult Function(String path) pictureChosen,
    required TResult Function(String path) loading,
    required TResult Function() uploaded,
    required TResult Function(DateTime dateTime, String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? initial,
    TResult? Function(String path)? pictureChosen,
    TResult? Function(String path)? loading,
    TResult? Function()? uploaded,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? initial,
    TResult Function(String path)? pictureChosen,
    TResult Function(String path)? loading,
    TResult Function()? uploaded,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickerImageStateInitial value) initial,
    required TResult Function(PickerImageStateChoosen value) pictureChosen,
    required TResult Function(PickerImageStateLoading value) loading,
    required TResult Function(PickerImageStateUploaded value) uploaded,
    required TResult Function(PickerImageStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickerImageStateInitial value)? initial,
    TResult? Function(PickerImageStateChoosen value)? pictureChosen,
    TResult? Function(PickerImageStateLoading value)? loading,
    TResult? Function(PickerImageStateUploaded value)? uploaded,
    TResult? Function(PickerImageStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickerImageStateInitial value)? initial,
    TResult Function(PickerImageStateChoosen value)? pictureChosen,
    TResult Function(PickerImageStateLoading value)? loading,
    TResult Function(PickerImageStateUploaded value)? uploaded,
    TResult Function(PickerImageStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickerImageStateCopyWith<$Res> {
  factory $PickerImageStateCopyWith(
          PickerImageState value, $Res Function(PickerImageState) then) =
      _$PickerImageStateCopyWithImpl<$Res, PickerImageState>;
}

/// @nodoc
class _$PickerImageStateCopyWithImpl<$Res, $Val extends PickerImageState>
    implements $PickerImageStateCopyWith<$Res> {
  _$PickerImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PickerImageStateInitialCopyWith<$Res> {
  factory _$$PickerImageStateInitialCopyWith(_$PickerImageStateInitial value,
          $Res Function(_$PickerImageStateInitial) then) =
      __$$PickerImageStateInitialCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$PickerImageStateInitialCopyWithImpl<$Res>
    extends _$PickerImageStateCopyWithImpl<$Res, _$PickerImageStateInitial>
    implements _$$PickerImageStateInitialCopyWith<$Res> {
  __$$PickerImageStateInitialCopyWithImpl(_$PickerImageStateInitial _value,
      $Res Function(_$PickerImageStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$PickerImageStateInitial(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickerImageStateInitial extends PickerImageStateInitial {
  _$PickerImageStateInitial({required this.path}) : super._();

  @override
  final String path;

  @override
  String toString() {
    return 'PickerImageState.initial(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickerImageStateInitial &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickerImageStateInitialCopyWith<_$PickerImageStateInitial> get copyWith =>
      __$$PickerImageStateInitialCopyWithImpl<_$PickerImageStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) initial,
    required TResult Function(String path) pictureChosen,
    required TResult Function(String path) loading,
    required TResult Function() uploaded,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return initial(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? initial,
    TResult? Function(String path)? pictureChosen,
    TResult? Function(String path)? loading,
    TResult? Function()? uploaded,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return initial?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? initial,
    TResult Function(String path)? pictureChosen,
    TResult Function(String path)? loading,
    TResult Function()? uploaded,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickerImageStateInitial value) initial,
    required TResult Function(PickerImageStateChoosen value) pictureChosen,
    required TResult Function(PickerImageStateLoading value) loading,
    required TResult Function(PickerImageStateUploaded value) uploaded,
    required TResult Function(PickerImageStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickerImageStateInitial value)? initial,
    TResult? Function(PickerImageStateChoosen value)? pictureChosen,
    TResult? Function(PickerImageStateLoading value)? loading,
    TResult? Function(PickerImageStateUploaded value)? uploaded,
    TResult? Function(PickerImageStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickerImageStateInitial value)? initial,
    TResult Function(PickerImageStateChoosen value)? pictureChosen,
    TResult Function(PickerImageStateLoading value)? loading,
    TResult Function(PickerImageStateUploaded value)? uploaded,
    TResult Function(PickerImageStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PickerImageStateInitial extends PickerImageState {
  factory PickerImageStateInitial({required final String path}) =
      _$PickerImageStateInitial;
  PickerImageStateInitial._() : super._();

  String get path;
  @JsonKey(ignore: true)
  _$$PickerImageStateInitialCopyWith<_$PickerImageStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickerImageStateChoosenCopyWith<$Res> {
  factory _$$PickerImageStateChoosenCopyWith(_$PickerImageStateChoosen value,
          $Res Function(_$PickerImageStateChoosen) then) =
      __$$PickerImageStateChoosenCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$PickerImageStateChoosenCopyWithImpl<$Res>
    extends _$PickerImageStateCopyWithImpl<$Res, _$PickerImageStateChoosen>
    implements _$$PickerImageStateChoosenCopyWith<$Res> {
  __$$PickerImageStateChoosenCopyWithImpl(_$PickerImageStateChoosen _value,
      $Res Function(_$PickerImageStateChoosen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$PickerImageStateChoosen(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickerImageStateChoosen extends PickerImageStateChoosen {
  _$PickerImageStateChoosen({required this.path}) : super._();

  @override
  final String path;

  @override
  String toString() {
    return 'PickerImageState.pictureChosen(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickerImageStateChoosen &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickerImageStateChoosenCopyWith<_$PickerImageStateChoosen> get copyWith =>
      __$$PickerImageStateChoosenCopyWithImpl<_$PickerImageStateChoosen>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) initial,
    required TResult Function(String path) pictureChosen,
    required TResult Function(String path) loading,
    required TResult Function() uploaded,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return pictureChosen(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? initial,
    TResult? Function(String path)? pictureChosen,
    TResult? Function(String path)? loading,
    TResult? Function()? uploaded,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return pictureChosen?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? initial,
    TResult Function(String path)? pictureChosen,
    TResult Function(String path)? loading,
    TResult Function()? uploaded,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (pictureChosen != null) {
      return pictureChosen(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickerImageStateInitial value) initial,
    required TResult Function(PickerImageStateChoosen value) pictureChosen,
    required TResult Function(PickerImageStateLoading value) loading,
    required TResult Function(PickerImageStateUploaded value) uploaded,
    required TResult Function(PickerImageStateFailed value) failed,
  }) {
    return pictureChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickerImageStateInitial value)? initial,
    TResult? Function(PickerImageStateChoosen value)? pictureChosen,
    TResult? Function(PickerImageStateLoading value)? loading,
    TResult? Function(PickerImageStateUploaded value)? uploaded,
    TResult? Function(PickerImageStateFailed value)? failed,
  }) {
    return pictureChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickerImageStateInitial value)? initial,
    TResult Function(PickerImageStateChoosen value)? pictureChosen,
    TResult Function(PickerImageStateLoading value)? loading,
    TResult Function(PickerImageStateUploaded value)? uploaded,
    TResult Function(PickerImageStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (pictureChosen != null) {
      return pictureChosen(this);
    }
    return orElse();
  }
}

abstract class PickerImageStateChoosen extends PickerImageState {
  factory PickerImageStateChoosen({required final String path}) =
      _$PickerImageStateChoosen;
  PickerImageStateChoosen._() : super._();

  String get path;
  @JsonKey(ignore: true)
  _$$PickerImageStateChoosenCopyWith<_$PickerImageStateChoosen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickerImageStateLoadingCopyWith<$Res> {
  factory _$$PickerImageStateLoadingCopyWith(_$PickerImageStateLoading value,
          $Res Function(_$PickerImageStateLoading) then) =
      __$$PickerImageStateLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$PickerImageStateLoadingCopyWithImpl<$Res>
    extends _$PickerImageStateCopyWithImpl<$Res, _$PickerImageStateLoading>
    implements _$$PickerImageStateLoadingCopyWith<$Res> {
  __$$PickerImageStateLoadingCopyWithImpl(_$PickerImageStateLoading _value,
      $Res Function(_$PickerImageStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$PickerImageStateLoading(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickerImageStateLoading extends PickerImageStateLoading {
  _$PickerImageStateLoading({required this.path}) : super._();

  @override
  final String path;

  @override
  String toString() {
    return 'PickerImageState.loading(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickerImageStateLoading &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickerImageStateLoadingCopyWith<_$PickerImageStateLoading> get copyWith =>
      __$$PickerImageStateLoadingCopyWithImpl<_$PickerImageStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) initial,
    required TResult Function(String path) pictureChosen,
    required TResult Function(String path) loading,
    required TResult Function() uploaded,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return loading(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? initial,
    TResult? Function(String path)? pictureChosen,
    TResult? Function(String path)? loading,
    TResult? Function()? uploaded,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return loading?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? initial,
    TResult Function(String path)? pictureChosen,
    TResult Function(String path)? loading,
    TResult Function()? uploaded,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickerImageStateInitial value) initial,
    required TResult Function(PickerImageStateChoosen value) pictureChosen,
    required TResult Function(PickerImageStateLoading value) loading,
    required TResult Function(PickerImageStateUploaded value) uploaded,
    required TResult Function(PickerImageStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickerImageStateInitial value)? initial,
    TResult? Function(PickerImageStateChoosen value)? pictureChosen,
    TResult? Function(PickerImageStateLoading value)? loading,
    TResult? Function(PickerImageStateUploaded value)? uploaded,
    TResult? Function(PickerImageStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickerImageStateInitial value)? initial,
    TResult Function(PickerImageStateChoosen value)? pictureChosen,
    TResult Function(PickerImageStateLoading value)? loading,
    TResult Function(PickerImageStateUploaded value)? uploaded,
    TResult Function(PickerImageStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PickerImageStateLoading extends PickerImageState {
  factory PickerImageStateLoading({required final String path}) =
      _$PickerImageStateLoading;
  PickerImageStateLoading._() : super._();

  String get path;
  @JsonKey(ignore: true)
  _$$PickerImageStateLoadingCopyWith<_$PickerImageStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickerImageStateUploadedCopyWith<$Res> {
  factory _$$PickerImageStateUploadedCopyWith(_$PickerImageStateUploaded value,
          $Res Function(_$PickerImageStateUploaded) then) =
      __$$PickerImageStateUploadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickerImageStateUploadedCopyWithImpl<$Res>
    extends _$PickerImageStateCopyWithImpl<$Res, _$PickerImageStateUploaded>
    implements _$$PickerImageStateUploadedCopyWith<$Res> {
  __$$PickerImageStateUploadedCopyWithImpl(_$PickerImageStateUploaded _value,
      $Res Function(_$PickerImageStateUploaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickerImageStateUploaded extends PickerImageStateUploaded {
  _$PickerImageStateUploaded() : super._();

  @override
  String toString() {
    return 'PickerImageState.uploaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickerImageStateUploaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) initial,
    required TResult Function(String path) pictureChosen,
    required TResult Function(String path) loading,
    required TResult Function() uploaded,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return uploaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? initial,
    TResult? Function(String path)? pictureChosen,
    TResult? Function(String path)? loading,
    TResult? Function()? uploaded,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return uploaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? initial,
    TResult Function(String path)? pictureChosen,
    TResult Function(String path)? loading,
    TResult Function()? uploaded,
    TResult Function(DateTime dateTime, String message)? failed,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickerImageStateInitial value) initial,
    required TResult Function(PickerImageStateChoosen value) pictureChosen,
    required TResult Function(PickerImageStateLoading value) loading,
    required TResult Function(PickerImageStateUploaded value) uploaded,
    required TResult Function(PickerImageStateFailed value) failed,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickerImageStateInitial value)? initial,
    TResult? Function(PickerImageStateChoosen value)? pictureChosen,
    TResult? Function(PickerImageStateLoading value)? loading,
    TResult? Function(PickerImageStateUploaded value)? uploaded,
    TResult? Function(PickerImageStateFailed value)? failed,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickerImageStateInitial value)? initial,
    TResult Function(PickerImageStateChoosen value)? pictureChosen,
    TResult Function(PickerImageStateLoading value)? loading,
    TResult Function(PickerImageStateUploaded value)? uploaded,
    TResult Function(PickerImageStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class PickerImageStateUploaded extends PickerImageState {
  factory PickerImageStateUploaded() = _$PickerImageStateUploaded;
  PickerImageStateUploaded._() : super._();
}

/// @nodoc
abstract class _$$PickerImageStateFailedCopyWith<$Res> {
  factory _$$PickerImageStateFailedCopyWith(_$PickerImageStateFailed value,
          $Res Function(_$PickerImageStateFailed) then) =
      __$$PickerImageStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime, String message});
}

/// @nodoc
class __$$PickerImageStateFailedCopyWithImpl<$Res>
    extends _$PickerImageStateCopyWithImpl<$Res, _$PickerImageStateFailed>
    implements _$$PickerImageStateFailedCopyWith<$Res> {
  __$$PickerImageStateFailedCopyWithImpl(_$PickerImageStateFailed _value,
      $Res Function(_$PickerImageStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? message = null,
  }) {
    return _then(_$PickerImageStateFailed(
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

class _$PickerImageStateFailed extends PickerImageStateFailed {
  _$PickerImageStateFailed({required this.dateTime, required this.message})
      : super._();

  @override
  final DateTime dateTime;
  @override
  final String message;

  @override
  String toString() {
    return 'PickerImageState.failed(dateTime: $dateTime, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickerImageStateFailed &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickerImageStateFailedCopyWith<_$PickerImageStateFailed> get copyWith =>
      __$$PickerImageStateFailedCopyWithImpl<_$PickerImageStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) initial,
    required TResult Function(String path) pictureChosen,
    required TResult Function(String path) loading,
    required TResult Function() uploaded,
    required TResult Function(DateTime dateTime, String message) failed,
  }) {
    return failed(dateTime, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? initial,
    TResult? Function(String path)? pictureChosen,
    TResult? Function(String path)? loading,
    TResult? Function()? uploaded,
    TResult? Function(DateTime dateTime, String message)? failed,
  }) {
    return failed?.call(dateTime, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? initial,
    TResult Function(String path)? pictureChosen,
    TResult Function(String path)? loading,
    TResult Function()? uploaded,
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
    required TResult Function(PickerImageStateInitial value) initial,
    required TResult Function(PickerImageStateChoosen value) pictureChosen,
    required TResult Function(PickerImageStateLoading value) loading,
    required TResult Function(PickerImageStateUploaded value) uploaded,
    required TResult Function(PickerImageStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickerImageStateInitial value)? initial,
    TResult? Function(PickerImageStateChoosen value)? pictureChosen,
    TResult? Function(PickerImageStateLoading value)? loading,
    TResult? Function(PickerImageStateUploaded value)? uploaded,
    TResult? Function(PickerImageStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickerImageStateInitial value)? initial,
    TResult Function(PickerImageStateChoosen value)? pictureChosen,
    TResult Function(PickerImageStateLoading value)? loading,
    TResult Function(PickerImageStateUploaded value)? uploaded,
    TResult Function(PickerImageStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class PickerImageStateFailed extends PickerImageState {
  factory PickerImageStateFailed(
      {required final DateTime dateTime,
      required final String message}) = _$PickerImageStateFailed;
  PickerImageStateFailed._() : super._();

  DateTime get dateTime;
  String get message;
  @JsonKey(ignore: true)
  _$$PickerImageStateFailedCopyWith<_$PickerImageStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
