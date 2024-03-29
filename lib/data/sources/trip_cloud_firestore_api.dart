import 'package:aero_delivery/data/models/result_search_trip_model.dart';
import 'package:aero_delivery/data/models/trip_model.dart';
import 'package:aero_delivery/domain/entities/trip_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class TripCloudFirestoreApi {
  factory TripCloudFirestoreApi() = _TripCloudFirestore;

  Future<String> createTrip({
    required TripEntity trip,
  });

  Future<List<ResultSearchTripModel>?> searchTrips({
    required String? airportFrom,
    required String? airportTo,
    required DateTime? dateOfDeparture,
    required DateTime? dateOfArrival,
  });

  Future<ResultSearchTripModel?> getTrip({
    required String idTrip,
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
        uidUser: trip.uidUser ?? "",
        airportFrom: trip.airportFrom!.name!,
        airportFromLocation: GeoPoint(trip.airportFrom!.location!.latitude,
            trip.airportFrom!.location!.longitude),
        airportTo: trip.airportTo!.name!,
        airportToLocation: GeoPoint(trip.airportTo!.location!.latitude,
            trip.airportTo!.location!.longitude),
        dateOfDeparture: Timestamp.fromDate(trip.dateOfDeparture!),
        dateOfArrival: Timestamp.fromDate(trip.dateOfArrival!),
        freeWeight: trip.freeWeight!));
    final docSnap = await document.get();
    return docSnap.reference.id;
  }

  @override
  Future<List<ResultSearchTripModel>?> searchTrips({
    required String? airportFrom,
    required String? airportTo,
    required DateTime? dateOfDeparture,
    required DateTime? dateOfArrival,
  }) async {
    final response = await _tripsCollectionReference
        .where("dateOfDeparture", isGreaterThanOrEqualTo: dateOfDeparture)
        .get();
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

  @override
  Future<ResultSearchTripModel?> getTrip({
    required String idTrip,
  }) async {
    final response = await _tripsCollectionReference.doc(idTrip).get();
    if (!response.exists) return null;
    final trip = ResultSearchTripModel(
      tripId: response.id,
      resultsTrip: response.data()!,
    );
    return trip;
  }
}
