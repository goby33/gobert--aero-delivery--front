import 'package:aero_delivery/data/sources/auth_firebase_api.dart';
import 'package:aero_delivery/domain/repositories/cloud_firestore_repository.dart';

class CloudFirestoreRepositoryImpl with CloudFirestoreRepository {
  final AuthFirebaseApi _authFirebaseApi;

  CloudFirestoreRepositoryImpl(this._authFirebaseApi);
}
