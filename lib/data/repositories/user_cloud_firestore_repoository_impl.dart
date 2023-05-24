import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/data/models/user_model.dart';
import 'package:aero_delivery/data/sources/user_cloud_firestore_api.dart';
import 'package:aero_delivery/domain/entities/user_entity.dart';
import 'package:aero_delivery/domain/repositories/user_cloud_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserCloudFirestoreRepositoryImpl with UserCloudFirestoreRepository {
  final UserCloudFirestoreApi _userCloudFirestoreApi;
  static UserModel? _user;

  UserCloudFirestoreRepositoryImpl(this._userCloudFirestoreApi);

  // GET USER

  @override
  UserEntity? getUserModelData() {
    if (_user == null) return null;
    return UserEntity(
      lastName: _user!.lastName,
      firstName: _user!.firstName,
      email: _user!.email,
      urlImage: _user!.urlImage,
      birthday: _user!.birthday.toDate(),
    );
  }



  @override
  Future<ApiResponse<UserEntity>> getUserModel({
    required String uid,
  }) async {
    try {
      final response = await _userCloudFirestoreApi.getUserModel(uid: uid);
      _user = response;
      return SuccessResponse('402', getUserModelData()!);
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  // SET USER
  @override
  Future<ApiResponse<void>> createUser({
    required String uid,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required DateTime birthday,
  }) async {
    try {
      _user = UserModel(
        lastName: lastName,
        firstName: firstName,
        email: email,
        urlImage: '',
        birthday: Timestamp.fromDate(birthday),
      );
      await _userCloudFirestoreApi.createUserModel(
        userModel: _user!,
        uid: uid,
      );
      return SuccessResponse(1.toString(), null);
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  //update urlImage
  @override
  Future<ApiResponse<void>> updateUserUrlImage({
    required String uid,
    required String urlImage,
  }) async {
    try {
      await _userCloudFirestoreApi.updateUserUrlImage(
        uid: uid,
        urlImage: urlImage,
      );
      return SuccessResponse(1.toString(), null);
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

}
