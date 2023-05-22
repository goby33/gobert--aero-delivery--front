import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/entities/trip_entity.dart';
import 'package:aero_delivery/domain/repositories/cloud_firestore_repository.dart';
import 'package:aero_delivery/domain/repositories/google_place_repository.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTripCubit extends Cubit<PopUpAddTripState> {
  GooglePlaceRepository googlePlaceRepository;
  CloudFirestoreRepository cloudFirestoreRepository;

  AddTripCubit({
    required this.googlePlaceRepository,
    required this.cloudFirestoreRepository,
  }) : super(PopUpAddTripStateStart(trip: null));

  // CALL API

  Future<void> searchAirport(String query) async {
    if (query.isNotEmpty && query.length >= 4) {
      emit(PopUpAddTripStateLoading(trip: state.trip));
      final response = await googlePlaceRepository.searchPlace(query);
      emit(PopUpAddTripStateAirportResultSearch(
        trip: state.trip,
        dateTime: DateTime.now(),
        resultSearch: response,
      ));
    }
  }

  // AIRPORT FROM
  Future<void> addAirportFromSelected(String airportName) async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
    emit(
      PopUpAddTripStateAddAirportFromSelected(
        trip: TripEntity(
          airportFrom: airportName,
          airportTo: state.trip?.airportTo,
          dateOfDeparture: state.trip?.dateOfDeparture,
          dateOfArrival: state.trip?.dateOfArrival,
          freeWeight: state.trip?.freeWeight,
          uidUser: '',
        ),
      ),
    );
  }

  Future<void> addAirportFromReady() async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
    emit(
      PopUpAddTripStateAddAirportFromReady(
        trip: state.trip,
      ),
    );
  }

  // clear airport from
  Future<void> clearAirportFrom() async {
    emit(PopUpAddTripStateStart(trip: state.trip));
  }

  // ADD DATE OF DEPARTURE
  Future<void> addDateOfDepartureSelected(DateTime dateTime) async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
    final today = DateTime.now();
    if (dateTime.isBefore(today)) {
      emit(
        PopUpAddTripStateFailed(
          dateTime: dateTime,
          trip: state.trip,
          message: 'Date of departure must be after today',
        ),
      );
    } else {
      emit(
        PopUpAddTripStateAddDateOfDepartureSelected(
          trip: TripEntity(
            airportFrom: state.trip?.airportFrom,
            airportTo: state.trip?.airportTo,
            dateOfDeparture: dateTime,
            dateOfArrival: state.trip?.dateOfArrival,
            freeWeight: state.trip?.freeWeight,
            uidUser: '',
          ),
        ),
      );
    }
  }

  Future<void> addDateOfDepartureReady() async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
    emit(
      PopUpAddTripStateAddDateOfDepartureReady(
        trip: state.trip,
      ),
    );
  }

  // AIRPORT To
  Future<void> addAirportToSelected(String airportName) async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
    emit(
      PopUpAddTripStateAddAirportToSelected(
        trip: TripEntity(
          airportFrom: state.trip?.airportFrom,
          airportTo: airportName,
          dateOfDeparture: state.trip?.dateOfDeparture,
          dateOfArrival: state.trip?.dateOfArrival,
          freeWeight: state.trip?.freeWeight, uidUser: '',
        ),
      ),
    );
  }

  Future<void> addAirportToReady() async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
    emit(
      PopUpAddTripStateAddAirportToReady(
        trip: state.trip,
      ),
    );
  }

  // clear airport from
  Future<void> clearAirportTo() async {
    emit(PopUpAddTripStateStart(trip: state.trip));
  }

  // ADD DATE OF ARRIVAL
  Future<void> addDateOfArrivalSelected(DateTime dateTime) async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
    final today = DateTime.now();
    if (dateTime.isBefore(today)) {
      emit(
        PopUpAddTripStateFailed(
          dateTime: dateTime,
          trip: state.trip,
          message: 'Date of departure must be after today',
        ),
      );
    } else {
      emit(
        PopUpAddTripStateAddDateOfArrivalSelected(
          trip: TripEntity(
            airportFrom: state.trip?.airportFrom,
            airportTo: state.trip?.airportTo,
            dateOfDeparture: state.trip?.dateOfDeparture,
            dateOfArrival: dateTime,
            freeWeight: null,
            uidUser: '',
          ),
        ),
      );
    }
  }

  Future<void> addDateOfArrivalReady() async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
    emit(
      PopUpAddTripStateAddDateOfArrivalReady(
        trip: state.trip,
      ),
    );
  }

  // ADD FREE WEIGHT

  Future<void> addFreeWeightSelected(String freeWeight) async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
    emit(
      PopUpAddTripStateAddFreeWeightSelected(
        trip: TripEntity(
          airportFrom: state.trip?.airportFrom,
          airportTo: state.trip?.airportTo,
          dateOfDeparture: state.trip?.dateOfDeparture,
          dateOfArrival: state.trip?.dateOfArrival,
          freeWeight: freeWeight,
          uidUser: '',
        ),
      ),
    );
  }

  Future<void> addFreeWeightReady() async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
    emit(
      PopUpAddTripStateAddFreeWeightReady(
        trip: state.trip,
      ),
    );
  }

  // SAVE THE TRIP
  Future<void> saveTrip() async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
    final response = await cloudFirestoreRepository.createTrip( trip: state.trip!);
    if (response is SuccessResponse) {
      emit(PopUpAddTripStateSuccess(trip: state.trip, id : response.data!));
    } else {
      emit(PopUpAddTripStateFailed(
        trip: state.trip,
        message: 'Failed to save the trip',
        dateTime: DateTime.now(),
      ));
    }
  }
}
