import 'dart:async';

import 'package:aero_delivery/domain/entities/place_entity.dart';
import 'package:aero_delivery/domain/repositories/google_place_repository.dart';
import 'package:aero_delivery/presentation/states/search_place_state.dart';
import 'package:bloc/bloc.dart';




class SearchPlaceCubit extends Cubit<SearchPlaceState> {
  final GooglePlaceRepository googlePlaceRepository;
   PlaceEntity? searchPlaceResponsesEntity;


  SearchPlaceCubit({
    required this.googlePlaceRepository,
}) : super(SearchPlaceStateInitial());


  Future<void> searchAirport(String query) async {
    if (query.isNotEmpty && query.length >= 4) {
      emit(SearchPlaceStateLoading());
      final response = await googlePlaceRepository.searchPlace(query);
      emit(SearchPlaceStateResult(
        resultSearch: response,
      ));
    }
  }

  void airportSelected(PlaceEntity airportSelected) {
    searchPlaceResponsesEntity = airportSelected;
    emit(SearchPlaceStateSelected(
      airportSelected: airportSelected,
    ));
  }
  void airportClear() {
    searchPlaceResponsesEntity = null;
    emit(SearchPlaceStateInitial());
  }
}
