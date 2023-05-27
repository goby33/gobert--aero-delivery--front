import 'dart:async';

import 'package:aero_delivery/domain/repositories/google_place_repository.dart';
import 'package:aero_delivery/presentation/states/pop_up_search_trip_state.dart';
import 'package:bloc/bloc.dart';




class PopUpSearchTripCubit extends Cubit<PopUpSearchTripState> {
  GooglePlaceRepository googlePlaceRepository;


  PopUpSearchTripCubit({
    required this.googlePlaceRepository,
}) : super(PopUpSearchTripStateInitial());


  Future<void> searchAirport(String query) async {
    if (query.isNotEmpty && query.length >= 4) {
      emit(PopUpSearchTripStateLoading());
      final response = await googlePlaceRepository.searchPlace(query);
      emit(PopUpSearchTripStateResult(
        resultSearch: response,
      ));
    }
  }

  Future<void> airportSelected(String query) async {
    if (query.isNotEmpty && query.length >= 4) {
      emit(PopUpSearchTripStateLoading());
      final response = await googlePlaceRepository.searchPlace(query);
      emit(PopUpSearchTripStateResult(
        resultSearch: response,
      ));
    }
  }
}
