import 'package:aero_delivery/data/models/cirium_response_search.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'cirium_api.g.dart';

@RestApi(baseUrl: 'http://localhost:3001')
abstract class CiriumApi {
  factory CiriumApi(Dio dio, {String baseUrl}) = _CiriumApi;

  @GET('/flight/')
  Future<CiriumResponseSearch> getPipo();
}
