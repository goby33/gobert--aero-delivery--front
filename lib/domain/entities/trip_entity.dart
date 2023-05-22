import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_entity.freezed.dart';

@freezed
class TripEntity with _$TripEntity {
  const factory TripEntity({
    required String? uidUser,
    required String? airportFrom,
    required String? airportTo,
    required DateTime? dateOfDeparture,
    required DateTime? dateOfArrival,
    required String? freeWeight,
  }) = _TripEntity;
}
