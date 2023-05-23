// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TripEntity {
  String? get uidUser => throw _privateConstructorUsedError;
  String? get airportFrom => throw _privateConstructorUsedError;
  LocationEntity? get airportFromLocation => throw _privateConstructorUsedError;
  String? get airportTo => throw _privateConstructorUsedError;
  LocationEntity? get airportToLocation => throw _privateConstructorUsedError;
  DateTime? get dateOfDeparture => throw _privateConstructorUsedError;
  DateTime? get dateOfArrival => throw _privateConstructorUsedError;
  String? get freeWeight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripEntityCopyWith<TripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEntityCopyWith<$Res> {
  factory $TripEntityCopyWith(
          TripEntity value, $Res Function(TripEntity) then) =
      _$TripEntityCopyWithImpl<$Res, TripEntity>;
  @useResult
  $Res call(
      {String? uidUser,
      String? airportFrom,
      LocationEntity? airportFromLocation,
      String? airportTo,
      LocationEntity? airportToLocation,
      DateTime? dateOfDeparture,
      DateTime? dateOfArrival,
      String? freeWeight});

  $LocationEntityCopyWith<$Res>? get airportFromLocation;
  $LocationEntityCopyWith<$Res>? get airportToLocation;
}

/// @nodoc
class _$TripEntityCopyWithImpl<$Res, $Val extends TripEntity>
    implements $TripEntityCopyWith<$Res> {
  _$TripEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uidUser = freezed,
    Object? airportFrom = freezed,
    Object? airportFromLocation = freezed,
    Object? airportTo = freezed,
    Object? airportToLocation = freezed,
    Object? dateOfDeparture = freezed,
    Object? dateOfArrival = freezed,
    Object? freeWeight = freezed,
  }) {
    return _then(_value.copyWith(
      uidUser: freezed == uidUser
          ? _value.uidUser
          : uidUser // ignore: cast_nullable_to_non_nullable
              as String?,
      airportFrom: freezed == airportFrom
          ? _value.airportFrom
          : airportFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      airportFromLocation: freezed == airportFromLocation
          ? _value.airportFromLocation
          : airportFromLocation // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
      airportTo: freezed == airportTo
          ? _value.airportTo
          : airportTo // ignore: cast_nullable_to_non_nullable
              as String?,
      airportToLocation: freezed == airportToLocation
          ? _value.airportToLocation
          : airportToLocation // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
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

  @override
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<$Res>? get airportFromLocation {
    if (_value.airportFromLocation == null) {
      return null;
    }

    return $LocationEntityCopyWith<$Res>(_value.airportFromLocation!, (value) {
      return _then(_value.copyWith(airportFromLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<$Res>? get airportToLocation {
    if (_value.airportToLocation == null) {
      return null;
    }

    return $LocationEntityCopyWith<$Res>(_value.airportToLocation!, (value) {
      return _then(_value.copyWith(airportToLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TripEntityCopyWith<$Res>
    implements $TripEntityCopyWith<$Res> {
  factory _$$_TripEntityCopyWith(
          _$_TripEntity value, $Res Function(_$_TripEntity) then) =
      __$$_TripEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uidUser,
      String? airportFrom,
      LocationEntity? airportFromLocation,
      String? airportTo,
      LocationEntity? airportToLocation,
      DateTime? dateOfDeparture,
      DateTime? dateOfArrival,
      String? freeWeight});

  @override
  $LocationEntityCopyWith<$Res>? get airportFromLocation;
  @override
  $LocationEntityCopyWith<$Res>? get airportToLocation;
}

/// @nodoc
class __$$_TripEntityCopyWithImpl<$Res>
    extends _$TripEntityCopyWithImpl<$Res, _$_TripEntity>
    implements _$$_TripEntityCopyWith<$Res> {
  __$$_TripEntityCopyWithImpl(
      _$_TripEntity _value, $Res Function(_$_TripEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uidUser = freezed,
    Object? airportFrom = freezed,
    Object? airportFromLocation = freezed,
    Object? airportTo = freezed,
    Object? airportToLocation = freezed,
    Object? dateOfDeparture = freezed,
    Object? dateOfArrival = freezed,
    Object? freeWeight = freezed,
  }) {
    return _then(_$_TripEntity(
      uidUser: freezed == uidUser
          ? _value.uidUser
          : uidUser // ignore: cast_nullable_to_non_nullable
              as String?,
      airportFrom: freezed == airportFrom
          ? _value.airportFrom
          : airportFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      airportFromLocation: freezed == airportFromLocation
          ? _value.airportFromLocation
          : airportFromLocation // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
      airportTo: freezed == airportTo
          ? _value.airportTo
          : airportTo // ignore: cast_nullable_to_non_nullable
              as String?,
      airportToLocation: freezed == airportToLocation
          ? _value.airportToLocation
          : airportToLocation // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
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

class _$_TripEntity implements _TripEntity {
  const _$_TripEntity(
      {required this.uidUser,
      required this.airportFrom,
      required this.airportFromLocation,
      required this.airportTo,
      required this.airportToLocation,
      required this.dateOfDeparture,
      required this.dateOfArrival,
      required this.freeWeight});

  @override
  final String? uidUser;
  @override
  final String? airportFrom;
  @override
  final LocationEntity? airportFromLocation;
  @override
  final String? airportTo;
  @override
  final LocationEntity? airportToLocation;
  @override
  final DateTime? dateOfDeparture;
  @override
  final DateTime? dateOfArrival;
  @override
  final String? freeWeight;

  @override
  String toString() {
    return 'TripEntity(uidUser: $uidUser, airportFrom: $airportFrom, airportFromLocation: $airportFromLocation, airportTo: $airportTo, airportToLocation: $airportToLocation, dateOfDeparture: $dateOfDeparture, dateOfArrival: $dateOfArrival, freeWeight: $freeWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripEntity &&
            (identical(other.uidUser, uidUser) || other.uidUser == uidUser) &&
            (identical(other.airportFrom, airportFrom) ||
                other.airportFrom == airportFrom) &&
            (identical(other.airportFromLocation, airportFromLocation) ||
                other.airportFromLocation == airportFromLocation) &&
            (identical(other.airportTo, airportTo) ||
                other.airportTo == airportTo) &&
            (identical(other.airportToLocation, airportToLocation) ||
                other.airportToLocation == airportToLocation) &&
            (identical(other.dateOfDeparture, dateOfDeparture) ||
                other.dateOfDeparture == dateOfDeparture) &&
            (identical(other.dateOfArrival, dateOfArrival) ||
                other.dateOfArrival == dateOfArrival) &&
            (identical(other.freeWeight, freeWeight) ||
                other.freeWeight == freeWeight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uidUser,
      airportFrom,
      airportFromLocation,
      airportTo,
      airportToLocation,
      dateOfDeparture,
      dateOfArrival,
      freeWeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripEntityCopyWith<_$_TripEntity> get copyWith =>
      __$$_TripEntityCopyWithImpl<_$_TripEntity>(this, _$identity);
}

abstract class _TripEntity implements TripEntity {
  const factory _TripEntity(
      {required final String? uidUser,
      required final String? airportFrom,
      required final LocationEntity? airportFromLocation,
      required final String? airportTo,
      required final LocationEntity? airportToLocation,
      required final DateTime? dateOfDeparture,
      required final DateTime? dateOfArrival,
      required final String? freeWeight}) = _$_TripEntity;

  @override
  String? get uidUser;
  @override
  String? get airportFrom;
  @override
  LocationEntity? get airportFromLocation;
  @override
  String? get airportTo;
  @override
  LocationEntity? get airportToLocation;
  @override
  DateTime? get dateOfDeparture;
  @override
  DateTime? get dateOfArrival;
  @override
  String? get freeWeight;
  @override
  @JsonKey(ignore: true)
  _$$_TripEntityCopyWith<_$_TripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
