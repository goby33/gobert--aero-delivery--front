import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/data/models/trip_model.dart';
import 'package:aero_delivery/domain/entities/trip_entity.dart';

mixin CloudFirestoreRepository {
  Future<ApiResponse<String>> createTrip({
    required TripEntity trip,
  });

  Future<ApiResponse<List<TripModel>>> searchTrip({
    required String airportFrom,
    required String airportTo,
    required DateTime dateOfDeparture,
    required DateTime dateOfArrival,
  });
}
