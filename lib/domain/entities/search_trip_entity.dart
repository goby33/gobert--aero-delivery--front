import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_trip_entity.freezed.dart';

@freezed
class SearchTripEntity with _$SearchTripEntity {
  const factory SearchTripEntity({
    required String airportFrom,
    required String airportTo,
    required DateTime dateOfDeparture,
  }) = _SearchTripEntity;
}
