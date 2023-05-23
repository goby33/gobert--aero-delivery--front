import 'package:aero_delivery/data/models/result_search_trip_model.dart';
import 'package:aero_delivery/data/models/trip_model.dart';
import 'package:aero_delivery/domain/entities/trip_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class TripCloudFirestoreApi {
  factory TripCloudFirestoreApi() = _TripCloudFirestore;

  Future<String> createTrip({
    required TripEntity trip,
  });

  Future<List<ResultSearchTripModel>?> getTrips({
    required String? airportFrom,
    required String? airportTo,
    required DateTime? dateOfDeparture,
    required DateTime? dateOfArrival,
  });
}

class _TripCloudFirestore implements TripCloudFirestoreApi {
  final CollectionReference<TripModel> _tripsCollectionReference =
      FirebaseFirestore.instance.collection('trips').withConverter<TripModel>(
          fromFirestore: (snapshot, _) => TripModel.fromJson(snapshot.data()!),
          toFirestore: (object, _) => object.toJson());

  _TripCloudFirestore();

  @override
  Future<String> createTrip({
    required TripEntity trip,
  }) async {
    final document = await _tripsCollectionReference.add(TripModel(
        uidUser: trip.uidUser ?? '',
        airportFrom: trip.airportFrom ?? '',
        airportFromLocation: const GeoPoint(2, 3),
        airportTo: trip.airportTo ?? '',
        airportToLocation: const GeoPoint(2, 3),
        dateOfDeparture: Timestamp.fromDate(trip.dateOfDeparture!),
        dateOfArrival: Timestamp.fromDate(trip.dateOfArrival!),
        freeWeight: trip.freeWeight ?? "small"));
    final docSnap = await document.get();
    return docSnap.reference.id;
  }

  @override
  Future<List<ResultSearchTripModel>?> getTrips({
    required String? airportFrom,
    required String? airportTo,
    required DateTime? dateOfDeparture,
    required DateTime? dateOfArrival,
  }) async {
    final response = await _tripsCollectionReference.get();
    final listTrips = response.docs
        .map(
          (e) => ResultSearchTripModel(
            tripId: e.id,
            resultsTrip: e.data(),
          ),
        )
        .toList();
    return listTrips;
  }
}
