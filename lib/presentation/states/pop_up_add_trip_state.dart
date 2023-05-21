import 'package:aero_delivery/domain/entities/search_address_responses.dart';
import 'package:aero_delivery/domain/entities/trip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pop_up_add_trip_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class PopUpAddTripState with _$PopUpAddTripState {
  const PopUpAddTripState._();

  // start
  factory PopUpAddTripState.start({
    required Trip? trip,
  }) = PopUpAddTripStateStart;

  // success finish
  factory PopUpAddTripState.success({
    required Trip? trip,
  }) = PopUpAddTripStateSuccess;

  factory PopUpAddTripState.loading({
    required Trip? trip,
  }) = PopUpAddTripStateLoading;

  factory PopUpAddTripState.failed(
      {required DateTime dateTime,
      required Trip? trip,
      required String message}) = PopUpAddTripStateFailed;

  // Airport From
  factory PopUpAddTripState.airportResultSearch({
    required Trip? trip,
    required DateTime dateTime,
    required List<SearchAddressResponses> resultSearch,
  }) = PopUpAddTripStateAirportResultSearch;





  factory PopUpAddTripState.addDateOfArrivalSelected({
    required Trip? trip,
  }) = PopUpAddTripStateAddDateOfArrivalSelected;

  //PopUpAddTripStateAddFreeWeightSelected
  factory PopUpAddTripState.addFreeWeightSelected({
    required Trip? trip,
  }) = PopUpAddTripStateAddFreeWeightSelected;

  // Date of departure
  // date departure selected
  factory PopUpAddTripState.addDateOfDepartureSelected({
    required Trip? trip,
  }) = PopUpAddTripStateAddDateOfDepartureSelected;

  factory PopUpAddTripState.addDateOfDepartureReady({
    required Trip? trip,
  }) = PopUpAddTripStateAddDateOfDepartureReady;




  factory PopUpAddTripState.addDateOfArrivalReady({
    required Trip? trip,
  }) = PopUpAddTripStateAddDateOfArrivalReady;

  factory PopUpAddTripState.addFreeWeightReady({
    required Trip? trip,
  }) = PopUpAddTripStateAddFreeWeightReady;

  factory PopUpAddTripState.resumeReady({
    required Trip? trip,
  }) = PopUpAddTripStateResumeReady;

  factory PopUpAddTripState.addTripReady({
    required Trip? trip,
  }) = PopUpAddTripStateAddTripReady;

  // AIRPORT From
  factory PopUpAddTripState.addAirportFromSelected({
    required Trip? trip,
  }) = PopUpAddTripStateAddAirportFromSelected;

  factory PopUpAddTripState.addAirportFromReady({
    required Trip? trip,
  }) = PopUpAddTripStateAddAirportFromReady;

  // AIRPORT To

  factory PopUpAddTripState.addAirportToSelected({
    required Trip? trip,
  }) = PopUpAddTripStateAddAirportToSelected;


  factory PopUpAddTripState.addAirportToReady({
    required Trip? trip,
  }) = PopUpAddTripStateAddAirportToReady;


  // get result search
  List<SearchAddressResponses>? get resultSearchAirport => maybeMap(
        airportResultSearch: (value) => value.resultSearch,
        orElse: () => null,
      );

  // get trip
  Trip? get trip => maybeMap(
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
}
