// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripModel _$TripModelFromJson(Map<String, dynamic> json) {
  return _TripModel.fromJson(json);
}

/// @nodoc
mixin _$TripModel {
  String get airportFrom => throw _privateConstructorUsedError;
  String get airportTo => throw _privateConstructorUsedError;
  DateTime get dateOfDeparture => throw _privateConstructorUsedError;
  DateTime get dateOfArrival => throw _privateConstructorUsedError;
  String get freeWeight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripModelCopyWith<TripModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripModelCopyWith<$Res> {
  factory $TripModelCopyWith(TripModel value, $Res Function(TripModel) then) =
      _$TripModelCopyWithImpl<$Res, TripModel>;
  @useResult
  $Res call(
      {String airportFrom,
      String airportTo,
      DateTime dateOfDeparture,
      DateTime dateOfArrival,
      String freeWeight});
}

/// @nodoc
class _$TripModelCopyWithImpl<$Res, $Val extends TripModel>
    implements $TripModelCopyWith<$Res> {
  _$TripModelCopyWithImpl(this._value, this._then);

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
    Object? dateOfArrival = null,
    Object? freeWeight = null,
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
      dateOfArrival: null == dateOfArrival
          ? _value.dateOfArrival
          : dateOfArrival // ignore: cast_nullable_to_non_nullable
              as DateTime,
      freeWeight: null == freeWeight
          ? _value.freeWeight
          : freeWeight // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripModelCopyWith<$Res> implements $TripModelCopyWith<$Res> {
  factory _$$_TripModelCopyWith(
          _$_TripModel value, $Res Function(_$_TripModel) then) =
      __$$_TripModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String airportFrom,
      String airportTo,
      DateTime dateOfDeparture,
      DateTime dateOfArrival,
      String freeWeight});
}

/// @nodoc
class __$$_TripModelCopyWithImpl<$Res>
    extends _$TripModelCopyWithImpl<$Res, _$_TripModel>
    implements _$$_TripModelCopyWith<$Res> {
  __$$_TripModelCopyWithImpl(
      _$_TripModel _value, $Res Function(_$_TripModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airportFrom = null,
    Object? airportTo = null,
    Object? dateOfDeparture = null,
    Object? dateOfArrival = null,
    Object? freeWeight = null,
  }) {
    return _then(_$_TripModel(
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
      dateOfArrival: null == dateOfArrival
          ? _value.dateOfArrival
          : dateOfArrival // ignore: cast_nullable_to_non_nullable
              as DateTime,
      freeWeight: null == freeWeight
          ? _value.freeWeight
          : freeWeight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripModel implements _TripModel {
  const _$_TripModel(
      {required this.airportFrom,
      required this.airportTo,
      required this.dateOfDeparture,
      required this.dateOfArrival,
      required this.freeWeight});

  factory _$_TripModel.fromJson(Map<String, dynamic> json) =>
      _$$_TripModelFromJson(json);

  @override
  final String airportFrom;
  @override
  final String airportTo;
  @override
  final DateTime dateOfDeparture;
  @override
  final DateTime dateOfArrival;
  @override
  final String freeWeight;

  @override
  String toString() {
    return 'TripModel(airportFrom: $airportFrom, airportTo: $airportTo, dateOfDeparture: $dateOfDeparture, dateOfArrival: $dateOfArrival, freeWeight: $freeWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripModel &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, airportFrom, airportTo,
      dateOfDeparture, dateOfArrival, freeWeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripModelCopyWith<_$_TripModel> get copyWith =>
      __$$_TripModelCopyWithImpl<_$_TripModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripModelToJson(
      this,
    );
  }
}

abstract class _TripModel implements TripModel {
  const factory _TripModel(
      {required final String airportFrom,
      required final String airportTo,
      required final DateTime dateOfDeparture,
      required final DateTime dateOfArrival,
      required final String freeWeight}) = _$_TripModel;

  factory _TripModel.fromJson(Map<String, dynamic> json) =
      _$_TripModel.fromJson;

  @override
  String get airportFrom;
  @override
  String get airportTo;
  @override
  DateTime get dateOfDeparture;
  @override
  DateTime get dateOfArrival;
  @override
  String get freeWeight;
  @override
  @JsonKey(ignore: true)
  _$$_TripModelCopyWith<_$_TripModel> get copyWith =>
      throw _privateConstructorUsedError;
}
