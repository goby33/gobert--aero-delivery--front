
import 'package:aero_delivery/domain/entities/result_search_trip_entity.dart';
import 'package:aero_delivery/domain/entities/search_address_responses_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pop_up_search_trip_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class PopUpSearchTripState with _$PopUpSearchTripState {

  const PopUpSearchTripState._();

  // intial
  factory PopUpSearchTripState.initial() = PopUpSearchTripStateInitial;

  // loading
  factory PopUpSearchTripState.loading() = PopUpSearchTripStateLoading;

  // result
  factory PopUpSearchTripState.result({
    required List<SearchAddressResponsesEntity> resultSearch,
}) = PopUpSearchTripStateResult;

  // selected
  factory PopUpSearchTripState.selected() = PopUpSearchTripStateSelected;

  // confirmed
  factory PopUpSearchTripState.confirmed() = PopUpSearchTripStateConfirmed;

  // failed
  factory PopUpSearchTripState.failed() = PopUpSearchTripStateFailed;
}
