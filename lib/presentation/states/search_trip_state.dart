import 'package:aero_delivery/data/models/trip_model.dart';
import 'package:aero_delivery/domain/entities/result_search_trip_entity.dart';
import 'package:aero_delivery/domain/entities/search_trip_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_trip_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SearchTripState with _$SearchTripState {
  const SearchTripState._();

  //initial state
  factory SearchTripState.initial() = SearchTripStateInitial;

  //state when loading
  factory SearchTripState.loading() = SearchTripStateLoading;

  // stare where failed to load
  factory SearchTripState.failed(
      {required DateTime dateTime,
      required String message}) = SearchTripStateFailed;

  // state when the result search
  factory SearchTripState.searchResult(
          {required DateTime dateTime,
          required List<ResultSearchTripEntity> result}) =
      SearchTripStateSearchResult;




  // airport from is selected
  factory SearchTripState.airportFromSelected({
    required SearchTripEntity searchTripEntity,
  }) = SearchTripStateAirportFromSelected;

  // airport to is selected
  factory SearchTripState.airportToSelected({
    required SearchTripEntity searchTripEntity,
  }) = SearchTripStateAirportToSelected;

  //date is selected
  factory SearchTripState.dateSelected({
    required SearchTripEntity searchTripEntity,
  }) = SearchTripStateDateSelected;

  // flexibility is selected
  factory SearchTripState.flexibilitySelected({
    required SearchTripEntity searchTripEntity,
  }) = SearchTripStateFlexibilitySelected;



  // GETTERS

//get result
  List<ResultSearchTripEntity> get results => maybeMap(
        searchResult: (value) => value.result,
        orElse: () => [],
      );


  SearchTripEntity? get searchTripEntity => maybeMap(
    airportFromSelected: (state) => state.searchTripEntity,
    airportToSelected: (state) => state.searchTripEntity,
    dateSelected: (state) => state.searchTripEntity,
    flexibilitySelected: (state) => state.searchTripEntity,
    orElse: () => null,
  );
}
