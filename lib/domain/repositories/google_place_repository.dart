import 'package:aero_delivery/domain/entities/search_address_responses_entity.dart';

mixin GooglePlaceRepository {
  Future<List<SearchAddressResponsesEntity>> searchPlace(String search);
}
