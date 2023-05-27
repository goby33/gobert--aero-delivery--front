import 'package:aero_delivery/domain/entities/location_entity.dart';
import 'package:aero_delivery/domain/entities/place_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_entity.freezed.dart';

@freezed
class TripEntity with _$TripEntity {
  const factory TripEntity({
    String? uidUser,
    PlaceEntity? airportFrom,
    PlaceEntity? airportTo,
    DateTime? dateOfDeparture,
    DateTime? dateOfArrival,
    String? freeWeight,
  }) = _TripEntity;
}
