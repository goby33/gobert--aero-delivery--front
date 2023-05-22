// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchTripEntity {
  String get airportFrom => throw _privateConstructorUsedError;
  String get airportTo => throw _privateConstructorUsedError;
  DateTime get dateOfDeparture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchTripEntityCopyWith<SearchTripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTripEntityCopyWith<$Res> {
  factory $SearchTripEntityCopyWith(
          SearchTripEntity value, $Res Function(SearchTripEntity) then) =
      _$SearchTripEntityCopyWithImpl<$Res, SearchTripEntity>;
  @useResult
  $Res call({String airportFrom, String airportTo, DateTime dateOfDeparture});
}

/// @nodoc
class _$SearchTripEntityCopyWithImpl<$Res, $Val extends SearchTripEntity>
    implements $SearchTripEntityCopyWith<$Res> {
  _$SearchTripEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airportFrom = null,
    Object? airportTo = null,
    Object? dateOfDeparture = null,
  }) {
    return _then(_value.copyWith(
      airportFrom: null == airportFrom
          ? _value.airportFrom
          : airportFrom // ignore: cast_nullable_to_non_nullable
              as String,
      airportTo: null == airportTo
          ? _value.airportTo
          : airportTo // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfDeparture: null == dateOfDeparture
          ? _value.dateOfDeparture
          : dateOfDeparture // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchTripEntityCopyWith<$Res>
    implements $SearchTripEntityCopyWith<$Res> {
  factory _$$_SearchTripEntityCopyWith(
          _$_SearchTripEntity value, $Res Function(_$_SearchTripEntity) then) =
      __$$_SearchTripEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String airportFrom, String airportTo, DateTime dateOfDeparture});
}

/// @nodoc
class __$$_SearchTripEntityCopyWithImpl<$Res>
    extends _$SearchTripEntityCopyWithImpl<$Res, _$_SearchTripEntity>
    implements _$$_SearchTripEntityCopyWith<$Res> {
  __$$_SearchTripEntityCopyWithImpl(
      _$_SearchTripEntity _value, $Res Function(_$_SearchTripEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airportFrom = null,
    Object? airportTo = null,
    Object? dateOfDeparture = null,
  }) {
    return _then(_$_SearchTripEntity(
      airportFrom: null == airportFrom
          ? _value.airportFrom
          : airportFrom // ignore: cast_nullable_to_non_nullable
              as String,
      airportTo: null == airportTo
          ? _value.airportTo
          : airportTo // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfDeparture: null == dateOfDeparture
          ? _value.dateOfDeparture
          : dateOfDeparture // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_SearchTripEntity implements _SearchTripEntity {
  const _$_SearchTripEntity(
      {required this.airportFrom,
      required this.airportTo,
      required this.dateOfDeparture});

  @override
  final String airportFrom;
  @override
  final String airportTo;
  @override
  final DateTime dateOfDeparture;

  @override
  String toString() {
    return 'SearchTripEntity(airportFrom: $airportFrom, airportTo: $airportTo, dateOfDeparture: $dateOfDeparture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchTripEntity &&
            (identical(other.airportFrom, airportFrom) ||
                other.airportFrom == airportFrom) &&
            (identical(other.airportTo, airportTo) ||
                other.airportTo == airportTo) &&
            (identical(other.dateOfDeparture, dateOfDeparture) ||
                other.dateOfDeparture == dateOfDeparture));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, airportFrom, airportTo, dateOfDeparture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchTripEntityCopyWith<_$_SearchTripEntity> get copyWith =>
      __$$_SearchTripEntityCopyWithImpl<_$_SearchTripEntity>(this, _$identity);
}

abstract class _SearchTripEntity implements SearchTripEntity {
  const factory _SearchTripEntity(
      {required final String airportFrom,
      required final String airportTo,
      required final DateTime dateOfDeparture}) = _$_SearchTripEntity;

  @override
  String get airportFrom;
  @override
  String get airportTo;
  @override
  DateTime get dateOfDeparture;
  @override
  @JsonKey(ignore: true)
  _$$_SearchTripEntityCopyWith<_$_SearchTripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
