// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_search_trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultSearchTripEntity {
  String get tripId => throw _privateConstructorUsedError;
  TripEntity get resultsTrip => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultSearchTripEntityCopyWith<ResultSearchTripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultSearchTripEntityCopyWith<$Res> {
  factory $ResultSearchTripEntityCopyWith(ResultSearchTripEntity value,
          $Res Function(ResultSearchTripEntity) then) =
      _$ResultSearchTripEntityCopyWithImpl<$Res, ResultSearchTripEntity>;
  @useResult
  $Res call({String tripId, TripEntity resultsTrip});

  $TripEntityCopyWith<$Res> get resultsTrip;
}

/// @nodoc
class _$ResultSearchTripEntityCopyWithImpl<$Res,
        $Val extends ResultSearchTripEntity>
    implements $ResultSearchTripEntityCopyWith<$Res> {
  _$ResultSearchTripEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? resultsTrip = null,
  }) {
    return _then(_value.copyWith(
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as String,
      resultsTrip: null == resultsTrip
          ? _value.resultsTrip
          : resultsTrip // ignore: cast_nullable_to_non_nullable
              as TripEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripEntityCopyWith<$Res> get resultsTrip {
    return $TripEntityCopyWith<$Res>(_value.resultsTrip, (value) {
      return _then(_value.copyWith(resultsTrip: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultSearchTripEntityCopyWith<$Res>
    implements $ResultSearchTripEntityCopyWith<$Res> {
  factory _$$_ResultSearchTripEntityCopyWith(_$_ResultSearchTripEntity value,
          $Res Function(_$_ResultSearchTripEntity) then) =
      __$$_ResultSearchTripEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tripId, TripEntity resultsTrip});

  @override
  $TripEntityCopyWith<$Res> get resultsTrip;
}

/// @nodoc
class __$$_ResultSearchTripEntityCopyWithImpl<$Res>
    extends _$ResultSearchTripEntityCopyWithImpl<$Res,
        _$_ResultSearchTripEntity>
    implements _$$_ResultSearchTripEntityCopyWith<$Res> {
  __$$_ResultSearchTripEntityCopyWithImpl(_$_ResultSearchTripEntity _value,
      $Res Function(_$_ResultSearchTripEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tripId = null,
    Object? resultsTrip = null,
  }) {
    return _then(_$_ResultSearchTripEntity(
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as String,
      resultsTrip: null == resultsTrip
          ? _value.resultsTrip
          : resultsTrip // ignore: cast_nullable_to_non_nullable
              as TripEntity,
    ));
  }
}

/// @nodoc

class _$_ResultSearchTripEntity implements _ResultSearchTripEntity {
  const _$_ResultSearchTripEntity(
      {required this.tripId, required this.resultsTrip});

  @override
  final String tripId;
  @override
  final TripEntity resultsTrip;

  @override
  String toString() {
    return 'ResultSearchTripEntity(tripId: $tripId, resultsTrip: $resultsTrip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultSearchTripEntity &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.resultsTrip, resultsTrip) ||
                other.resultsTrip == resultsTrip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tripId, resultsTrip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultSearchTripEntityCopyWith<_$_ResultSearchTripEntity> get copyWith =>
      __$$_ResultSearchTripEntityCopyWithImpl<_$_ResultSearchTripEntity>(
          this, _$identity);
}

abstract class _ResultSearchTripEntity implements ResultSearchTripEntity {
  const factory _ResultSearchTripEntity(
      {required final String tripId,
      required final TripEntity resultsTrip}) = _$_ResultSearchTripEntity;

  @override
  String get tripId;
  @override
  TripEntity get resultsTrip;
  @override
  @JsonKey(ignore: true)
  _$$_ResultSearchTripEntityCopyWith<_$_ResultSearchTripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
