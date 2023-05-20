import 'package:aero_delivery/domain/entities/trip.dart';
import 'package:aero_delivery/domain/repositories/google_place_repository.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopUpAddTripCubit extends Cubit<PopUpAddTripState> {
  GooglePlaceRepository googlePlaceRepository;

  PopUpAddTripCubit({required this.googlePlaceRepository})
      : super(PopUpAddTripStateStart(trip: null));

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

  // airport from
  Future<void> addAirportFrom(String airportName) async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
    emit(
      PopUpAddTripStateAddAirportFromSelected(
        trip: Trip(
          airportFrom: airportName,
          airportTo: null,
          dateOfDeparture: null,
          dateOfArrival: null,
          freeWeight: null,
        ),
      ),
    );
  }

  // clear airport from
  Future<void> clearAirportFrom() async {
    emit(PopUpAddTripStateStart(trip: state.trip));
  }

  // Add airport To
  Future<void> addAirportTo(String airportName) async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
  }

  // Add date of departure
  Future<void> addDateOfDeparture(String dateOfDeparture) async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
  }

  // add date of arrival
  Future<void> addDateOfArrival(String dateOfArrival) async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
  }

  // add free weight
  Future<void> addFreeWeight(String freeWeight) async {
    emit(PopUpAddTripStateLoading(trip: state.trip));
  }
}
