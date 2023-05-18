import 'package:aero_delivery/data/sources/google_place_api.dart';
import 'package:aero_delivery/domain/repositories/google_place_repository_impl.dart';

class GooglePlaceRepositoryImpl with GooglePlaceRepository {
  final GooglePlaceApi _googlePlaceApi;
  GooglePlaceRepositoryImpl(this._googlePlaceApi);
}
