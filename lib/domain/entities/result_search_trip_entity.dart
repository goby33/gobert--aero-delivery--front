import 'package:aero_delivery/domain/entities/trip_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_search_trip_entity.freezed.dart';

@freezed
class ResultSearchTripEntity with _$ResultSearchTripEntity {
  const factory ResultSearchTripEntity({
    required String tripId,
    required List<TripEntity> resultsTrip,
  }) = _ResultSearchTripEntity;
}
