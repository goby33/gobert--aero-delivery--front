import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip.freezed.dart';

@freezed
class Trip with _$Trip {
  const factory Trip({
    required String? airportFrom,
    required String? airportTo,
    required String? dateOfDeparture,
    required String? dateOfArrival,
    required String? freeWeight,
  }) = _Trip;
}
