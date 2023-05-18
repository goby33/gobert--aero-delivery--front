import 'package:freezed_annotation/freezed_annotation.dart';

import 'cubits/pop_up_add_trip_cubit.dart';

part 'pop_up_add_trip_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class PopUpAddTripState with _$PopUpAddTripState {
  const PopUpAddTripState._();

  factory PopUpAddTripState.loading() = PopUpAddTripStateLoading;

  factory PopUpAddTripState.failed(
      {required DateTime dateTime,
      required String message}) = PopUpAddTripStateFailed;

  factory PopUpAddTripState.addAirportFromReady({required Trip trip}) =
      PopUpAddTripStateAddAirportFromReady;
  factory PopUpAddTripState.addAirportToReady({required Trip trip}) =
      PopUpAddTripStateAddAirportToReady;
  factory PopUpAddTripState.addDateOfDepartureReady({required Trip trip}) =
      PopUpAddTripStateAddDateOfDepartureReady;
  factory PopUpAddTripState.addDateOfArrivalReady({required Trip trip}) =
      PopUpAddTripStateAddDateOfArrivalReady;
  factory PopUpAddTripState.addFreeWeightReady({required Trip trip}) =
      PopUpAddTripStateAddFreeWeightReady;
  factory PopUpAddTripState.resumeReady({required Trip trip}) =
      PopUpAddTripStateResumeReady;

  factory PopUpAddTripState.addTripReady({required Trip trip}) =
      PopUpAddTripStateAddTripReady;
}
