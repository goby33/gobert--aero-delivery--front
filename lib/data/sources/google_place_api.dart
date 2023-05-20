import 'package:aero_delivery/data/models/search_address_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'google_place_api.g.dart';

@RestApi(baseUrl: 'https://maps.googleapis.com/maps/api/place/')
abstract class GooglePlaceApi {
  factory GooglePlaceApi(Dio dio, {String baseUrl}) = _GooglePlaceApi;

  @GET("/textsearch/json")
  Future<SearchAddressResponseModel> searchPlace(
    @Query("query") String query,
    @Query("key") String key,
    @Query("type") String type,
  );
}
