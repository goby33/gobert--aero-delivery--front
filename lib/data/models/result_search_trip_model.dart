import 'package:aero_delivery/data/models/trip_model.dart';

class ResultSearchTripModel {
  String tripId;
  TripModel resultsTrip;



  ResultSearchTripModel({
    required this.tripId,
    required this.resultsTrip,
  });


  Map<String, dynamic> toJson() {
    return {
      'tripId': tripId,
      'resultsTrip': resultsTrip,
    };
  }

  factory ResultSearchTripModel.fromJson(Map<String, dynamic> json) {
    return ResultSearchTripModel(
      tripId: json['tripId'],
      resultsTrip: json['resultsTrip'],

    );
  }
}
