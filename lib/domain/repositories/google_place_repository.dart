import 'package:aero_delivery/domain/entities/search_address_responses.dart';

mixin GooglePlaceRepository {
  Future<List<SearchAddressResponses>> searchPlace(String search);
}
