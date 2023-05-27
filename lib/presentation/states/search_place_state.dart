import 'package:aero_delivery/domain/entities/place_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_place_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SearchPlaceState with _$SearchPlaceState {

  const SearchPlaceState._();

  // initial
  factory SearchPlaceState.initial() = SearchPlaceStateInitial;

  // loading
  factory SearchPlaceState.loading() = SearchPlaceStateLoading;

  // selected
  factory SearchPlaceState.selected({
    required PlaceEntity airportSelected,
}) = SearchPlaceStateSelected;

  // result
  factory SearchPlaceState.result({
    required List<PlaceEntity> resultSearch,
}) = SearchPlaceStateResult;

  // failed
  factory SearchPlaceState.failed() = SearchPlaceStateFailed;


  // getters

  PlaceEntity get  airportSelected => maybeMap(
    selected: (value) => value.airportSelected,
      orElse: () => throw Exception("No airport selected"),
  );
}
