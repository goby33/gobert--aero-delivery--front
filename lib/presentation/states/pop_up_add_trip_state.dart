import 'package:aero_delivery/domain/entities/search_address_responses_entity.dart';
import 'package:aero_delivery/domain/entities/trip_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pop_up_add_trip_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class PopUpAddTripState with _$PopUpAddTripState {
  const PopUpAddTripState._();

  // start
  factory PopUpAddTripState.start({
    required TripEntity? trip,
  }) = PopUpAddTripStateStart;

  // success finish
  factory PopUpAddTripState.success({
    required TripEntity? trip,
    required String id,
  }) = PopUpAddTripStateSuccess;

  factory PopUpAddTripState.loading({
    required TripEntity? trip,
  }) = PopUpAddTripStateLoading;

  factory PopUpAddTripState.failed(
      {required DateTime dateTime,
      required TripEntity? trip,
      required String message}) = PopUpAddTripStateFailed;

  // Airport From
  factory PopUpAddTripState.airportResultSearch({
    required TripEntity? trip,
    required DateTime dateTime,
    required List<SearchAddressResponsesEntity> resultSearch,
  }) = PopUpAddTripStateAirportResultSearch;





  factory PopUpAddTripState.addDateOfArrivalSelected({
    required TripEntity? trip,
  }) = PopUpAddTripStateAddDateOfArrivalSelected;

  //PopUpAddTripStateAddFreeWeightSelected
  factory PopUpAddTripState.addFreeWeightSelected({
    required TripEntity? trip,
  }) = PopUpAddTripStateAddFreeWeightSelected;

  // Date of departure
  // date departure selected
  factory PopUpAddTripState.addDateOfDepartureSelected({
    required TripEntity? trip,
  }) = PopUpAddTripStateAddDateOfDepartureSelected;

  factory PopUpAddTripState.addDateOfDepartureReady({
    required TripEntity? trip,
  }) = PopUpAddTripStateAddDateOfDepartureReady;




  factory PopUpAddTripState.addDateOfArrivalReady({
    required TripEntity? trip,
  }) = PopUpAddTripStateAddDateOfArrivalReady;

  factory PopUpAddTripState.addFreeWeightReady({
    required TripEntity? trip,
  }) = PopUpAddTripStateAddFreeWeightReady;

  factory PopUpAddTripState.resumeReady({
    required TripEntity? trip,
  }) = PopUpAddTripStateResumeReady;

  factory PopUpAddTripState.addTripReady({
    required TripEntity? trip,
  }) = PopUpAddTripStateAddTripReady;

  // AIRPORT From
  factory PopUpAddTripState.addAirportFromSelected({
    required TripEntity? trip,
  }) = PopUpAddTripStateAddAirportFromSelected;

  factory PopUpAddTripState.addAirportFromReady({
    required TripEntity? trip,
  }) = PopUpAddTripStateAddAirportFromReady;

  // AIRPORT To

  factory PopUpAddTripState.addAirportToSelected({
    required TripEntity? trip,
  }) = PopUpAddTripStateAddAirportToSelected;


  factory PopUpAddTripState.addAirportToReady({
    required TripEntity? trip,
  }) = PopUpAddTripStateAddAirportToReady;


  // get result search
  List<SearchAddressResponsesEntity>? get resultSearchAirport => maybeMap(
        airportResultSearch: (value) => value.resultSearch,
        orElse: () => null,
      );

  // get trip
  TripEntity? get trip => maybeMap(
        airportResultSearch: (value) => value.trip,
        addAirportFromReady: (value) => value.trip,
        addAirportToReady: (value) => value.trip,
        addDateOfDepartureReady: (value) => value.trip,
        addDateOfArrivalReady: (value) => value.trip,
        addFreeWeightReady: (value) => value.trip,
        resumeReady: (value) => value.trip,
        addTripReady: (value) => value.trip,
        orElse: () => null,
      );

  String get id => maybeMap(
        success: (value) => value.id,
        orElse: () => '',
      );
}
