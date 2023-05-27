import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/entities/place_entity.dart';
import 'package:aero_delivery/domain/entities/trip_entity.dart';
import 'package:aero_delivery/domain/repositories/google_place_repository.dart';
import 'package:aero_delivery/domain/repositories/trip_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/add_trip_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTripCubit extends Cubit<AddTripState> {
  final GooglePlaceRepository googlePlaceRepository;
  final TripCloudFirestoreRepository tripCloudFirestoreRepository;
  TripEntity? trip;

  AddTripCubit({
    required this.googlePlaceRepository,
    required this.tripCloudFirestoreRepository,
    required this.trip,
  }) : super(AddTripStateStart());

  // AIRPORT FROM
  void addAirportFromSelected(PlaceEntity? valueAirportFrom) {
    trip = trip?.copyWith(airportFrom: valueAirportFrom) ??
        TripEntity(
          airportFrom: valueAirportFrom,
        );
    emit(
      AddTripStateAirportFromSelected(
        trip: trip,
      ),
    );
  }

  // AIRPORT To
  void addAirportToSelected(PlaceEntity? valueAirportTo) {
    trip = trip?.copyWith(airportTo: valueAirportTo) ??
        TripEntity(
          airportTo: valueAirportTo,
        );
    emit(
      AddTripStateAirportToSelected(
        trip: trip,
      ),
    );
  }

  // ADD DATE OF DEPARTURE
  void addDateOfDepartureSelected(DateTime dateTime) {
    if (dateTime.isBefore(DateTime.now())) {
      emit(
        AddTripStateFailed(
          dateTime: dateTime,
          trip: state.trip,
          message: 'Date of departure must be after today',
        ),
      );
    } else {
      trip = trip?.copyWith(dateOfDeparture: dateTime) ??
          TripEntity(dateOfDeparture: dateTime);
      emit(
        AddTripStateDateOfDepartureSelected(
          trip: trip,
        ),
      );
    }
  }

  // ADD DATE OF ARRIVAL
  void addDateOfArrivalSelected(DateTime dateTime) {
    if (dateTime.isBefore(DateTime.now())) {
      emit(
        AddTripStateFailed(
          dateTime: dateTime,
          trip: state.trip,
          message: 'Date of departure must be after today',
        ),
      );
    } else {
      trip = trip?.copyWith(dateOfArrival: dateTime) ??
          TripEntity(dateOfArrival: dateTime);

      emit(
        AddTripStateDateOfArrivalSelected(
          trip: trip,
        ),
      );
    }
  }

  // ADD FREE WEIGHT
// TODO : add enum for free weight
  void addFreeWeightSelected(String freeWeight) {
    trip = trip?.copyWith(freeWeight: freeWeight) ??
        TripEntity(
          freeWeight: freeWeight,
        );
    emit(
      AddTripStateFreeWeightSelected(
        trip: trip,
      ),
    );
  }

  // SAVE THE TRIP
  Future<void> saveTrip() async {
    emit(AddTripStateLoading(trip: trip));
    final response = await tripCloudFirestoreRepository.createTrip(trip: trip!);
    if (response is SuccessResponse) {
      emit(AddTripStateSuccess(trip: state.trip, id: response.data!));
    } else {
      emit(AddTripStateFailed(
        trip: state.trip,
        message: 'Failed to save the trip',
        dateTime: DateTime.now(),
      ));
    }
  }
}
