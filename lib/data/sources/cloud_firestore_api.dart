import 'package:aero_delivery/data/models/trip_model.dart';
import 'package:aero_delivery/domain/entities/trip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class CloudFirestoreApi {
  factory CloudFirestoreApi(FirebaseFirestore firebaseFirestore) = _CloudFirestore;

  Future<void> createTrip({
    required Trip trip,
  });
}

class _CloudFirestore implements CloudFirestoreApi {
  final FirebaseFirestore _firebaseFirestoreAPi;

  _CloudFirestore(this._firebaseFirestoreAPi);

  @override
  Future<void> createTrip({
    required Trip trip,
  }) async {
    await _firebaseFirestoreAPi.collection('trips').add(TripModel(
        airportFrom: trip.airportFrom ?? '',
        airportTo: trip.airportTo ?? '',
        dateOfDeparture: trip.dateOfDeparture ?? DateTime.now(),
        dateOfArrival: trip.dateOfArrival ?? DateTime.now(),
        freeWeight: trip.freeWeight ?? "small").toJson());
  }
}
