import 'package:cloud_firestore/cloud_firestore.dart';

abstract class CloudFirestoreApi {
  factory CloudFirestoreApi(FirebaseFirestore firebaseFirestore) = _CloudFirestore;

}

class _CloudFirestore implements CloudFirestoreApi {
  final FirebaseFirestore _firebaseFirestoreAPi;

  _CloudFirestore(this._firebaseFirestoreAPi);
}
