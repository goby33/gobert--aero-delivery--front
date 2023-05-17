import 'package:aero_delivery/data/sources/cirium_api.dart';
import 'package:aero_delivery/data/models/cirium_response_search.dart';
import 'package:aero_delivery/domain/repositories/cirium_repository.dart';

class CiriumRepositoryImpl with CiriumRepository {
  final CiriumApi _ciriumApi;

  CiriumRepositoryImpl(this._ciriumApi);

  @override
  Future<CiriumResponseSearch> getPipo() async {
    final pipoModel = await _ciriumApi.getPipo();
    return pipoModel;
  }
}

