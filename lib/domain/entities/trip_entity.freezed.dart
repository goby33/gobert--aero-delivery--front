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
  PlaceEntity? get airportFrom => throw _privateConstructorUsedError;
  PlaceEntity? get airportTo => throw _privateConstructorUsedError;
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
      PlaceEntity? airportFrom,
      PlaceEntity? airportTo,
      DateTime? dateOfDeparture,
      DateTime? dateOfArrival,
      String? freeWeight});

  $PlaceEntityCopyWith<$Res>? get airportFrom;
  $PlaceEntityCopyWith<$Res>? get airportTo;
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
    Object? airportTo = freezed,
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
              as PlaceEntity?,
      airportTo: freezed == airportTo
          ? _value.airportTo
          : airportTo // ignore: cast_nullable_to_non_nullable
              as PlaceEntity?,
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
  $PlaceEntityCopyWith<$Res>? get airportFrom {
    if (_value.airportFrom == null) {
      return null;
    }

    return $PlaceEntityCopyWith<$Res>(_value.airportFrom!, (value) {
      return _then(_value.copyWith(airportFrom: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceEntityCopyWith<$Res>? get airportTo {
    if (_value.airportTo == null) {
      return null;
    }

    return $PlaceEntityCopyWith<$Res>(_value.airportTo!, (value) {
      return _then(_value.copyWith(airportTo: value) as $Val);
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
      PlaceEntity? airportFrom,
      PlaceEntity? airportTo,
      DateTime? dateOfDeparture,
      DateTime? dateOfArrival,
      String? freeWeight});

  @override
  $PlaceEntityCopyWith<$Res>? get airportFrom;
  @override
  $PlaceEntityCopyWith<$Res>? get airportTo;
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
    Object? airportTo = freezed,
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
              as PlaceEntity?,
      airportTo: freezed == airportTo
          ? _value.airportTo
          : airportTo // ignore: cast_nullable_to_non_nullable
              as PlaceEntity?,
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
      {this.uidUser,
      this.airportFrom,
      this.airportTo,
      this.dateOfDeparture,
      this.dateOfArrival,
      this.freeWeight});

  @override
  final String? uidUser;
  @override
  final PlaceEntity? airportFrom;
  @override
  final PlaceEntity? airportTo;
  @override
  final DateTime? dateOfDeparture;
  @override
  final DateTime? dateOfArrival;
  @override
  final String? freeWeight;

  @override
  String toString() {
    return 'TripEntity(uidUser: $uidUser, airportFrom: $airportFrom, airportTo: $airportTo, dateOfDeparture: $dateOfDeparture, dateOfArrival: $dateOfArrival, freeWeight: $freeWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripEntity &&
            (identical(other.uidUser, uidUser) || other.uidUser == uidUser) &&
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
  int get hashCode => Object.hash(runtimeType, uidUser, airportFrom, airportTo,
      dateOfDeparture, dateOfArrival, freeWeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripEntityCopyWith<_$_TripEntity> get copyWith =>
      __$$_TripEntityCopyWithImpl<_$_TripEntity>(this, _$identity);
}

abstract class _TripEntity implements TripEntity {
  const factory _TripEntity(
      {final String? uidUser,
      final PlaceEntity? airportFrom,
      final PlaceEntity? airportTo,
      final DateTime? dateOfDeparture,
      final DateTime? dateOfArrival,
      final String? freeWeight}) = _$_TripEntity;

  @override
  String? get uidUser;
  @override
  PlaceEntity? get airportFrom;
  @override
  PlaceEntity? get airportTo;
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
