import 'package:aero_delivery/data/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class UserCloudFirestoreApi {
  factory UserCloudFirestoreApi() = _UserCloudFirestore;

  Future<void> createUserModel({
    required UserModel userModel,
    required String uid,
  });

  Future<UserModel?> getUserModel({
    required String uid,
  });
}

class _UserCloudFirestore implements UserCloudFirestoreApi {
  final CollectionReference<UserModel> _tripsCollectionReference = FirebaseFirestore.instance.collection('users').withConverter<UserModel>(
      fromFirestore: (snapshot, _) => UserModel.fromJson(snapshot.data()!), toFirestore: (object, _) => object.toJson());

  _UserCloudFirestore();

  //SETTERS

  @override
  Future<void> createUserModel({
    required UserModel userModel,
    required String uid,
  }) async {
    await _tripsCollectionReference.doc(uid).set(userModel);
  }

  // GETTERS

  @override
  Future<UserModel?> getUserModel({
    required String uid,
  }) async {
    final response = await _tripsCollectionReference.doc(uid).get();
    return response.data();
  }
}
