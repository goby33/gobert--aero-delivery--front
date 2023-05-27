import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/entities/search_trip_entity.dart';
import 'package:aero_delivery/domain/repositories/trip_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/search_trip_state.dart';
import 'package:bloc/bloc.dart';

class SearchTripCubit extends Cubit<SearchTripState> {
  final TripCloudFirestoreRepository tripCloudFirestoreRepository;

  SearchTripCubit({
    required this.tripCloudFirestoreRepository,
  }) : super(SearchTripStateInitial());

  Future<void> getSearchTrip() async {
    // loading
    final searchTrip = await tripCloudFirestoreRepository.searchTrip(
//TODO : add airportFrom
      airportFrom: state.searchTripEntity!.airportFrom,
      airportTo: state.searchTripEntity!.airportTo,
      dateOfDeparture: state.searchTripEntity!.dateOfDeparture,
      dateOfArrival: DateTime.now(),
    );
    if (searchTrip is SuccessResponse) {
      emit(SearchTripStateSearchResult(
        dateTime: DateTime.now(),
        result: searchTrip.data ?? [],
      ));
    } else {
      emit(SearchTripStateFailed(dateTime: DateTime.now(), message: 'Failed'));
    }
  }

  void dateSelected(DateTime dateTime) {
    emit(SearchTripState.dateSelected(
      searchTripEntity: state.searchTripEntity?.copyWith(
            dateOfDeparture: dateTime,
          ) ??
          SearchTripEntity(
            airportFrom: '',
            airportTo: '',
            dateOfDeparture: dateTime,
          ),
    ));
  }

  // airport from selected
  void airportFromSelected(String airportFrom) {
    emit(SearchTripState.airportFromSelected(
      searchTripEntity: state.searchTripEntity?.copyWith(
            airportFrom: airportFrom,
          ) ??
          SearchTripEntity(
            airportFrom: airportFrom,
            airportTo: '',
            dateOfDeparture: DateTime.now(),
          ),
    ));
  }

  // airport to selected
  void airportToSelected(String airportTo) {
    emit(SearchTripState.airportToSelected(
      searchTripEntity: state.searchTripEntity?.copyWith(
            airportTo: airportTo,
          ) ??
          SearchTripEntity(
            airportFrom: '',
            airportTo: airportTo,
            dateOfDeparture: DateTime.now(),
          ),
    ));
  }

  // flexibility selected
  void flexibilitySelected(int flexibility) {
    emit(SearchTripState.flexibilitySelected(
      searchTripEntity: state.searchTripEntity?.copyWith(
              //TODO: add flexibility
              ) ??
          SearchTripEntity(
            airportFrom: '',
            airportTo: '',
            dateOfDeparture: DateTime.now(),
          ),
    ));
  }

  // search
  void search() {
    if (state.searchTripEntity == null) return;
    if (state.searchTripEntity!.airportFrom.isEmpty) return;
    if (state.searchTripEntity!.airportTo.isEmpty) return;
    getSearchTrip();
  }
}
