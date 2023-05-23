import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/entities/result_search_trip_entity.dart';
import 'package:aero_delivery/domain/entities/trip_entity.dart';

mixin TripCloudFirestoreRepository {

  Future<ApiResponse<String>> createTrip({
    required TripEntity trip,
  });

  Future<ApiResponse<List<ResultSearchTripEntity>>> searchTrip({
    required String airportFrom,
    required String airportTo,
    required DateTime dateOfDeparture,
    required DateTime dateOfArrival,
  });
}
