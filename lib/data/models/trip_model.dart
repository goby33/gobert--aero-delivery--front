import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_model.freezed.dart';
part 'trip_model.g.dart';

@freezed
class TripModel with _$TripModel {
  const factory TripModel({
    required String airportFrom,
    required String airportTo,
    required DateTime dateOfDeparture,
    required DateTime dateOfArrival,
    required String freeWeight,
  }) = _TripModel;


  factory TripModel.fromJson(Map<String, dynamic> data) => _$TripModelFromJson(data);
}
