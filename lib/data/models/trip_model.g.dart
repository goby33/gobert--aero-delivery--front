// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripModel _$$_TripModelFromJson(Map<String, dynamic> json) => _$_TripModel(
      airportFrom: json['airportFrom'] as String,
      airportTo: json['airportTo'] as String,
      dateOfDeparture: DateTime.parse(json['dateOfDeparture'] as String),
      dateOfArrival: DateTime.parse(json['dateOfArrival'] as String),
      freeWeight: json['freeWeight'] as String,
    );

Map<String, dynamic> _$$_TripModelToJson(_$_TripModel instance) =>
    <String, dynamic>{
      'airportFrom': instance.airportFrom,
      'airportTo': instance.airportTo,
      'dateOfDeparture': instance.dateOfDeparture.toIso8601String(),
      'dateOfArrival': instance.dateOfArrival.toIso8601String(),
      'freeWeight': instance.freeWeight,
    };
