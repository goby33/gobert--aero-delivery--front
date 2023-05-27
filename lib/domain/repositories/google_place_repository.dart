import 'package:aero_delivery/domain/entities/place_entity.dart';

mixin GooglePlaceRepository {
  Future<List<PlaceEntity>> searchPlace(String search);
}
