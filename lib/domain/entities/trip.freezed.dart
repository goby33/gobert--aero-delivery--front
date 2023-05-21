// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Trip {
  String? get airportFrom => throw _privateConstructorUsedError;
  String? get airportTo => throw _privateConstructorUsedError;
  DateTime? get dateOfDeparture => throw _privateConstructorUsedError;
  DateTime? get dateOfArrival => throw _privateConstructorUsedError;
  String? get freeWeight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {String? airportFrom,
      String? airportTo,
      DateTime? dateOfDeparture,
      DateTime? dateOfArrival,
      String? freeWeight});
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airportFrom = freezed,
    Object? airportTo = freezed,
    Object? dateOfDeparture = freezed,
    Object? dateOfArrival = freezed,
    Object? freeWeight = freezed,
  }) {
    return _then(_value.copyWith(
      airportFrom: freezed == airportFrom
          ? _value.airportFrom
          : airportFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      airportTo: freezed == airportTo
          ? _value.airportTo
          : airportTo // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfDeparture: freezed == dateOfDeparture
          ? _value.dateOfDeparture
          : dateOfDeparture // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateOfArrival: freezed == dateOfArrival
          ? _value.dateOfArrival
          : dateOfArrival // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freeWeight: freezed == freeWeight
          ? _value.freeWeight
          : freeWeight // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$_TripCopyWith(_$_Trip value, $Res Function(_$_Trip) then) =
      __$$_TripCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? airportFrom,
      String? airportTo,
      DateTime? dateOfDeparture,
      DateTime? dateOfArrival,
      String? freeWeight});
}

/// @nodoc
class __$$_TripCopyWithImpl<$Res> extends _$TripCopyWithImpl<$Res, _$_Trip>
    implements _$$_TripCopyWith<$Res> {
  __$$_TripCopyWithImpl(_$_Trip _value, $Res Function(_$_Trip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airportFrom = freezed,
    Object? airportTo = freezed,
    Object? dateOfDeparture = freezed,
    Object? dateOfArrival = freezed,
    Object? freeWeight = freezed,
  }) {
    return _then(_$_Trip(
      airportFrom: freezed == airportFrom
          ? _value.airportFrom
          : airportFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      airportTo: freezed == airportTo
          ? _value.airportTo
          : airportTo // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfDeparture: freezed == dateOfDeparture
          ? _value.dateOfDeparture
          : dateOfDeparture // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateOfArrival: freezed == dateOfArrival
          ? _value.dateOfArrival
          : dateOfArrival // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freeWeight: freezed == freeWeight
          ? _value.freeWeight
          : freeWeight // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Trip implements _Trip {
  const _$_Trip(
      {required this.airportFrom,
      required this.airportTo,
      required this.dateOfDeparture,
      required this.dateOfArrival,
      required this.freeWeight});

  @override
  final String? airportFrom;
  @override
  final String? airportTo;
  @override
  final DateTime? dateOfDeparture;
  @override
  final DateTime? dateOfArrival;
  @override
  final String? freeWeight;

  @override
  String toString() {
    return 'Trip(airportFrom: $airportFrom, airportTo: $airportTo, dateOfDeparture: $dateOfDeparture, dateOfArrival: $dateOfArrival, freeWeight: $freeWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trip &&
            (identical(other.airportFrom, airportFrom) ||
                other.airportFrom == airportFrom) &&
            (identical(other.airportTo, airportTo) ||
                other.airportTo == airportTo) &&
            (identical(other.dateOfDeparture, dateOfDeparture) ||
                other.dateOfDeparture == dateOfDeparture) &&
            (identical(other.dateOfArrival, dateOfArrival) ||
                other.dateOfArrival == dateOfArrival) &&
            (identical(other.freeWeight, freeWeight) ||
                other.freeWeight == freeWeight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, airportFrom, airportTo,
      dateOfDeparture, dateOfArrival, freeWeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripCopyWith<_$_Trip> get copyWith =>
      __$$_TripCopyWithImpl<_$_Trip>(this, _$identity);
}

abstract class _Trip implements Trip {
  const factory _Trip(
      {required final String? airportFrom,
      required final String? airportTo,
      required final DateTime? dateOfDeparture,
      required final DateTime? dateOfArrival,
      required final String? freeWeight}) = _$_Trip;

  @override
  String? get airportFrom;
  @override
  String? get airportTo;
  @override
  DateTime? get dateOfDeparture;
  @override
  DateTime? get dateOfArrival;
  @override
  String? get freeWeight;
  @override
  @JsonKey(ignore: true)
  _$$_TripCopyWith<_$_Trip> get copyWith => throw _privateConstructorUsedError;
}
