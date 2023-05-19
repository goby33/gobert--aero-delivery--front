import 'package:aero_delivery/data/sources/google_place_api.dart';
import 'package:aero_delivery/domain/entities/search_address_responses.dart';
import 'package:aero_delivery/domain/repositories/google_place_repository.dart';

class GooglePlaceRepositoryImpl with GooglePlaceRepository {
  final GooglePlaceApi _googlePlaceApi;
  GooglePlaceRepositoryImpl(this._googlePlaceApi);

  @override
  Future<List<SearchAddressResponses>> searchPlace(String search) async {
    final searchAddressResponses = await _googlePlaceApi.searchPlace(
        search, "AIzaSyArdb43mThxhWz3EiubCk_qf3_EBT7U12Y", "airport");
    if (searchAddressResponses.status == "OK") {
      return [
        ...searchAddressResponses.results!.map((e) => SearchAddressResponses(
              name: e.name,
              icon: e.icon,
              iconBackground: e.iconBackgroundColor,
            ))
      ];
    }
    return [];
  }
}
