import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/entities/trip.dart';

mixin CloudFirestoreRepository {
  Future<ApiResponse<void>> createTrip({
    required Trip trip,
  });
}
