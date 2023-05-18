import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopUpAddTripCubit extends Cubit<PopUpAddTripState> {
  PopUpAddTripCubit() : super(PopUpAddTripStateLoading());

  // CALL API

  Future<void> searchAirport(String query) async {
    print(query);
    if (query.isNotEmpty && query.length >= 4) {
      print(query);
      emit(PopUpAddTripStateLoading());
    }
  }

  // Add airport from
  Future<void> addAirportFrom(String airportName) async {
    emit(PopUpAddTripStateLoading());
    emit(
      PopUpAddTripStateAddAirportFromReady(
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

  // Add airport To
  Future<void> addAirportTo(String airportName) async {
    emit(PopUpAddTripStateLoading());
  }

  // Add date of departure
  Future<void> addDateOfDeparture(String dateOfDeparture) async {
    emit(PopUpAddTripStateLoading());
  }

  // add date of arrival
  Future<void> addDateOfArrival(String dateOfArrival) async {
    emit(PopUpAddTripStateLoading());
  }

  // add free weight
  Future<void> addFreeWeight(String freeWeight) async {
    emit(PopUpAddTripStateLoading());
  }
}

//object to save the informations
class Trip {
  String? airportFrom;
  String? airportTo;
  String? dateOfDeparture;
  String? dateOfArrival;
  String? freeWeight;

  Trip({
    required this.airportFrom,
    required this.airportTo,
    required this.dateOfDeparture,
    required this.dateOfArrival,
    required this.freeWeight,
  });
}
