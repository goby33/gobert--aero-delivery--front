import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/data/sources/auth_firebase_api.dart';
import 'package:aero_delivery/data/sources/cloud_firestore_api.dart';
import 'package:aero_delivery/domain/entities/trip.dart';
import 'package:aero_delivery/domain/repositories/cloud_firestore_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CloudFirestoreRepositoryImpl with CloudFirestoreRepository {
  final CloudFirestoreApi _cloudFirestoreApi;

  CloudFirestoreRepositoryImpl(this._cloudFirestoreApi);

  @override
  Future<ApiResponse<void>> createTrip({
    required Trip trip,
  }) async {
    try {
      final response =  await _cloudFirestoreApi.createTrip(trip: trip);
      return SuccessResponse(402.toString(), response);
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }

  }
}
