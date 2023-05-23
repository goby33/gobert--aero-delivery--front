import 'package:aero_delivery/domain/entities/location_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_entity.freezed.dart';

@freezed
class TripEntity with _$TripEntity {
  const factory TripEntity({
    required String? uidUser,
    required String? airportFrom,
    required LocationEntity? airportFromLocation,
    required String? airportTo,
    required LocationEntity? airportToLocation,
    required DateTime? dateOfDeparture,
    required DateTime? dateOfArrival,
    required String? freeWeight,
  }) = _TripEntity;
}
