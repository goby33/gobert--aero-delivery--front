import 'package:aero_delivery/data/models/trip_model.dart';
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
        required List<TripModel> result}) = SearchTripStateSearchResult;


  // GETTERS

//get result
  List<TripModel> get results => maybeMap(
        searchResult: (value) => value.result,
        orElse: () => [],
      );

}