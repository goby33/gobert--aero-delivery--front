import 'package:aero_delivery/domain/entities/result_search_trip_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_view_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class TripViewState with _$TripViewState {
  const TripViewState._();

  // initial state
  factory TripViewState.noTrip() = TripViewStateNoTrip;

  // loading state
  factory TripViewState.loading() = TripViewStateLoading;

  // failed state
  factory TripViewState.failed({
    required DateTime dateTime,
    required String message,
  }) = TripViewStateFailed;

  // success state
  factory TripViewState.success({
    required ResultSearchTripEntity resultSearchTripEntity,
}) = TripViewStateSuccess;

  // getTrip state

  ResultSearchTripEntity? get searchTripEntity => maybeMap(
    success: (value) => value.resultSearchTripEntity,
    orElse: () => null,
  );

}
