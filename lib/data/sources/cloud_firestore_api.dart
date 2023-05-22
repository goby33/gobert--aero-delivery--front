import 'package:aero_delivery/data/models/trip_model.dart';
import 'package:aero_delivery/domain/entities/trip_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class CloudFirestoreApi {
  factory CloudFirestoreApi(FirebaseFirestore firebaseFirestore) = _CloudFirestore;

  Future<String> createTrip({
    required TripEntity trip,
  });

  Future<List<TripModel>?> getTrips({
    required String? airportFrom,
    required String? airportTo,
    required DateTime? dateOfDeparture,
    required DateTime? dateOfArrival,
  });
}

class _CloudFirestore implements CloudFirestoreApi {
  final FirebaseFirestore _firebaseFirestoreAPi;
  final CollectionReference<TripModel> _tripsCollectionReference = FirebaseFirestore.instance.collection('trips').withConverter<TripModel>(
      fromFirestore: (snapshot, _) => TripModel.fromJson(snapshot.data()!), toFirestore: (object, _) => object.toJson());

  _CloudFirestore(
    this._firebaseFirestoreAPi,
  );

  @override
  Future<String> createTrip({
    required TripEntity trip,
  }) async {
    final document = await _tripsCollectionReference.add(TripModel(
            airportFrom: trip.airportFrom ?? '',
            airportTo: trip.airportTo ?? '',
            dateOfDeparture: Timestamp.fromDate(trip.dateOfDeparture!),
            dateOfArrival: Timestamp.fromDate(trip.dateOfArrival!),
            freeWeight: trip.freeWeight ?? "small"));
    final docSnap = await document.get();
    return docSnap.reference.id;
  }

  @override
  Future<List<TripModel>?> getTrips({
    required String? airportFrom,
    required String? airportTo,
    required DateTime? dateOfDeparture,
    required DateTime? dateOfArrival,
  }) async {
    final response = await _tripsCollectionReference.get();
    final listTrips = response.docs.map((e) => e.data()).toList();
    return listTrips;
  }
}

