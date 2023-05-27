import 'package:aero_delivery/domain/entities/trip_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_trip_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class AddTripState with _$AddTripState {
  const AddTripState._();

  // start
  factory AddTripState.start() = AddTripStateStart;

  // success finish
  factory AddTripState.success({
    required TripEntity? trip,
    required String id,
  }) = AddTripStateSuccess;

  factory AddTripState.loading({
    required TripEntity? trip,
  }) = AddTripStateLoading;

  factory AddTripState.failed({
    required DateTime dateTime,
    required TripEntity? trip,
    required String message,
  }) = AddTripStateFailed;

  factory AddTripState.dateOfArrivalSelected({
    required TripEntity? trip,
  }) = AddTripStateDateOfArrivalSelected;

  factory AddTripState.dateOfDepartureSelected({
    required TripEntity? trip,
  }) = AddTripStateDateOfDepartureSelected;

  //PopUpAddTripStateAddFreeWeightSelected
  factory AddTripState.freeWeightSelected({
    required TripEntity? trip,
  }) = AddTripStateFreeWeightSelected;

  // Date of departure
  // date departure selected

  // AIRPORT From
  factory AddTripState.airportFromSelected({
    required TripEntity? trip,
  }) = AddTripStateAirportFromSelected;

  // AIRPORT To

  factory AddTripState.airportToSelected({
    required TripEntity? trip,
  }) = AddTripStateAirportToSelected;

  // get result search

  // get trip
  TripEntity? get trip => maybeMap(
        orElse: () => null,
      );

  String get id => maybeMap(
        success: (value) => value.id,
        orElse: () => '',
      );
}
