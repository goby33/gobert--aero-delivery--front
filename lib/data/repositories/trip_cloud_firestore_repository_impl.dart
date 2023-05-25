import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/data/sources/trip_cloud_firestore_api.dart';
import 'package:aero_delivery/domain/entities/location_entity.dart';
import 'package:aero_delivery/domain/entities/result_search_trip_entity.dart';
import 'package:aero_delivery/domain/entities/trip_entity.dart';
import 'package:aero_delivery/domain/repositories/trip_cloud_firestore_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TripCloudFirestoreRepositoryImpl with TripCloudFirestoreRepository {
  final TripCloudFirestoreApi _cloudFirestoreApi;

  TripCloudFirestoreRepositoryImpl(this._cloudFirestoreApi);

  @override
  Future<ApiResponse<String>> createTrip({
    required TripEntity trip,
  }) async {
    try {
      final response = await _cloudFirestoreApi.createTrip(trip: trip);
      return SuccessResponse(402.toString(), response);
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  @override
  Future<ApiResponse<ResultSearchTripEntity?>> getTrip({
    required String idTrip,
  }) async {
    try {
      final responseApi = await _cloudFirestoreApi.getTrip(idTrip: idTrip);
      final response = responseApi != null
          ? ResultSearchTripEntity(
              tripId: responseApi.tripId,
              resultsTrip: TripEntity(
                uidUser: responseApi.resultsTrip.uidUser,
                airportFrom: responseApi.resultsTrip.airportFrom,
                airportFromLocation: LocationEntity(
                  latitude: responseApi.resultsTrip.airportFromLocation.latitude,
                  longitude: responseApi.resultsTrip.airportFromLocation.longitude,
                ),
                airportTo: responseApi.resultsTrip.airportTo,
                airportToLocation: LocationEntity(
                  latitude: responseApi.resultsTrip.airportToLocation.latitude,
                  longitude: responseApi.resultsTrip.airportToLocation.longitude,
                ),
                dateOfDeparture: responseApi.resultsTrip.dateOfDeparture.toDate(),
                dateOfArrival: responseApi.resultsTrip.dateOfArrival.toDate(),
                freeWeight: responseApi.resultsTrip.freeWeight,
              ),
            )
          : null;
      return SuccessResponse(401.toString(), response);
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  @override
  Future<ApiResponse<List<ResultSearchTripEntity>>> searchTrip({
    required String airportFrom,
    required String airportTo,
    required DateTime dateOfDeparture,
    required DateTime dateOfArrival,
  }) async {
    try {
      final responseApi = await _cloudFirestoreApi.searchTrips(
        airportFrom: airportFrom,
        airportTo: airportTo,
        dateOfDeparture: dateOfDeparture,
        dateOfArrival: dateOfArrival,
      );
      final response = responseApi
              ?.map(
                (trip) => ResultSearchTripEntity(
                  tripId: trip.tripId,
                  resultsTrip: TripEntity(
                    uidUser: trip.resultsTrip.uidUser,
                    airportFrom: trip.resultsTrip.airportFrom,
                    airportFromLocation: LocationEntity(
                      latitude: trip.resultsTrip.airportFromLocation.latitude,
                      longitude: trip.resultsTrip.airportFromLocation.longitude,
                    ),
                    airportTo: trip.resultsTrip.airportTo,
                    airportToLocation: LocationEntity(
                      latitude: trip.resultsTrip.airportToLocation.latitude,
                      longitude: trip.resultsTrip.airportToLocation.longitude,
                    ),
                    dateOfDeparture: trip.resultsTrip.dateOfDeparture.toDate(),
                    dateOfArrival: trip.resultsTrip.dateOfArrival.toDate(),
                    freeWeight: trip.resultsTrip.freeWeight,
                  ),
                ),
              )
              .toList() ??
          [];
      return SuccessResponse(
        402.toString(),
        response,
      );
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }
}
