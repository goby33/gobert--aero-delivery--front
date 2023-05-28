import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/data/sources/auth_firebase_api.dart';
import 'package:aero_delivery/domain/repositories/auth_firebase_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebaseRepositoryImpl with AuthFirebaseRepository {
  final AuthFirebaseApi _authFirebase;
  static User? _user;

  AuthFirebaseRepositoryImpl(this._authFirebase);

  @override
  Future<ApiResponse<User>> createAccountWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final responseAuth = await _authFirebase.createUserEmail(email: email, password: password);
      if (responseAuth == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        _user = responseAuth;
        return SuccessResponse(1.toString(), responseAuth);
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  @override
  Future<ApiResponse<User>> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final responseAuth = await _authFirebase.signInWithEmail(email: email, password: password);
      if (responseAuth == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        _user = responseAuth;
        return SuccessResponse(1.toString(), responseAuth);
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  @override
  User? get user => _user;

  @override
  Future<ApiResponse<User?>> getCurrentUser() async {
    try {
      final response = await _authFirebase.getCurrentUser();
      if (response == null) {
        _user = null;
        return SuccessResponse(404.toString(), null);
      } else {
        _user = response;
        return SuccessResponse(1.toString(), response);
      }
    } on FirebaseAuthException catch (e) {
      _user = null;
      return FailResponse(e.code, failure: e.message);
    }
  }

  @override
  Future<ApiResponse> signOut() async {
    try {
      await _authFirebase.signOut();
      _user = null;
      return SuccessResponse(1.toString(), null);
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  @override
  Future<ApiResponse<void>> resetPassword({
    required String email,
  }) async {
    try {
      await _authFirebase.sendPasswordResetEmail(email: email);
      return SuccessResponse(402.toString(), null);
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  //update name
  @override
  Future<ApiResponse<void>> updateName({
    required String name,
  }) async {
    try {
      await _authFirebase.updateProfile(name: name);
      return SuccessResponse(402.toString(), null);
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  //update email
  @override
  Future<ApiResponse<String>> updateEmail({
    required String email,
    required String password,
  }) async {
    try {
      final responseConnexionUser = await _authFirebase.reauthenticate(email: _user!.email!, password: password);
      if (responseConnexionUser == true) {
        final responseEmailExists = await _authFirebase.emailExists(email: email);
        if (!responseEmailExists) {
          await _authFirebase.updateEmail(email: email);
          return SuccessResponse(402.toString(), email);
        } else {
          return FailResponse(0.toString(), failure: "Email already exists");
        }
      } else {
        return FailResponse(0.toString(), failure: "Error user null");
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  //update password
  @override
  Future<ApiResponse<String>> updatePassword({
    required String password,
    required String oldPassword,
  }) async {
    try {
      final responseOldPassword = await _authFirebase.reauthenticate(email: _user!.email!, password: oldPassword);
      if (responseOldPassword == true) {
        await _authFirebase.updatePassword(password: password);
        return SuccessResponse(402.toString(), "ok");
      } else {
        return FailResponse(0.toString(), failure: "Password is the same");
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

  // delete account
  @override
  Future<ApiResponse<String>> deleteAccount({
    required String password,
  }) async {
    try {
      final responseOldPassword = await _authFirebase.reauthenticate(email: _user!.email!, password: password);
      if (responseOldPassword == true) {
        await _authFirebase.deleteUser();
        return SuccessResponse(402.toString(), "ok");
      } else {
        return FailResponse(0.toString(), failure: "Password failed");
      }
    } on FirebaseAuthException catch (e) {
      return FailResponse(e.code, failure: e.message);
    }
  }

}
