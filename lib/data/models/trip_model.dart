import 'package:cloud_firestore/cloud_firestore.dart';

class TripModel {
  String uidUser;
  String airportFrom;
  GeoPoint airportFromLocation;
  String airportTo;
  GeoPoint airportToLocation;
  Timestamp dateOfDeparture;
  Timestamp dateOfArrival;
  String freeWeight;




  TripModel({
    required this.uidUser,
    required this.airportFrom,
    required this.airportFromLocation,
    required this.airportTo,
    required this.airportToLocation,
    required this.dateOfDeparture,
    required this.dateOfArrival,
    required this.freeWeight,

  });

  Map<String, dynamic> toJson() {
    return {
      'uidUser': uidUser,
      'airportFrom': airportFrom,
      'airportFromLocation': airportFromLocation,
      'airportTo': airportTo,
      'airportToLocation': airportToLocation,
      'dateOfDeparture': dateOfDeparture,
      'dateOfArrival': dateOfArrival,
      'freeWeight': freeWeight,
    };
  }

  factory TripModel.fromJson(Map<String, dynamic> json) {
    return TripModel(
      uidUser: json['uidUser'],
      airportFrom: json['airportFrom'],
      airportFromLocation: json['airportFromLocation'],
      airportTo: json['airportTo'],
      airportToLocation: json['airportToLocation'],
      dateOfDeparture: json['dateOfDeparture'],
      dateOfArrival: json['dateOfArrival'],
      freeWeight: json['freeWeight'],
    );
  }
}
