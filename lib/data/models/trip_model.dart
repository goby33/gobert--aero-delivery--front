import 'package:cloud_firestore/cloud_firestore.dart';

class TripModel {
  String airportFrom;
  String airportTo;
  Timestamp dateOfDeparture;
  Timestamp dateOfArrival;
  String freeWeight;

  TripModel({
    required this.airportFrom,
    required this.airportTo,
    required this.dateOfDeparture,
    required this.dateOfArrival,
    required this.freeWeight,
  });

  Map<String, dynamic> toJson() {
    return {
      'airportFrom': airportFrom,
      'airportTo': airportTo,
      'dateOfDeparture': dateOfDeparture,
      'dateOfArrival': dateOfArrival,
      'freeWeight': freeWeight,
    };
  }

  factory TripModel.fromJson(Map<String, dynamic> json) {
    return TripModel(
      airportFrom: json['airportFrom'],
      airportTo: json['airportTo'],
      dateOfDeparture: json['dateOfDeparture'],
      dateOfArrival: json['dateOfArrival'],
      freeWeight: json['freeWeight'],
    );
  }
}
