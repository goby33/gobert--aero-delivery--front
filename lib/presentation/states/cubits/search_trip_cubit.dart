import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/repositories/trip_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/search_trip_state.dart';
import 'package:bloc/bloc.dart';

class SearchTripCubit extends Cubit<SearchTripState> {
  final TripCloudFirestoreRepository tripCloudFirestoreRepository;

  SearchTripCubit({
    required this.tripCloudFirestoreRepository,
  }) : super(SearchTripStateInitial());

  Future<void> getSearchTrip({
    required String airportFrom,
    required String airportTo,
    required DateTime dateOfDeparture,
    required DateTime dateOfArrival,
}) async {
    // loading
    emit(SearchTripStateLoading());
    final searchTrip = await tripCloudFirestoreRepository.searchTrip(
      airportFrom: airportFrom,
      airportTo: airportTo,
      dateOfDeparture: dateOfDeparture,
      dateOfArrival: dateOfArrival,
    );
    if (searchTrip is SuccessResponse) {
      emit(SearchTripStateSearchResult(dateTime: DateTime.now(), result: searchTrip.data ?? [],));
    } else {
      emit(SearchTripStateFailed(dateTime: DateTime.now(), message: 'Failed'));
    }
  }
}
