import 'package:aero_delivery/domain/repositories/cirium_repository.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopUpAddTripCubit extends Cubit<PopUpAddTripState> {
  final CiriumRepository ciriumRepository;

  PopUpAddTripCubit({required this.ciriumRepository})
      : super(PopUpAddTripStateLoading());

  // Add airport from
  Future<void> addAirportFrom(String airportName) async {
    emit(PopUpAddTripStateLoading());
    final response = ciriumRepository.getPipo();
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
    final response = ciriumRepository.getPipo();
  }

  // Add date of departure
  Future<void> addDateOfDeparture(String dateOfDeparture) async {
    emit(PopUpAddTripStateLoading());
    final response = ciriumRepository.getPipo();
  }

  // add date of arrival
  Future<void> addDateOfArrival(String dateOfArrival) async {
    emit(PopUpAddTripStateLoading());
    final response = ciriumRepository.getPipo();
  }

  // add free weight
  Future<void> addFreeWeight(String freeWeight) async {
    emit(PopUpAddTripStateLoading());
    final response = ciriumRepository.getPipo();
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
