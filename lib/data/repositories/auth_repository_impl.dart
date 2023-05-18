import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/data/sources/auth_firebase_impl.dart';
import 'package:aero_delivery/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl with AuthRepository {
  final AuthFirebaseImpl _authFirebase;
  static User? _user;

  AuthRepositoryImpl(this._authFirebase);

  @override
  Future<ApiResponse<User>> createAccountWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final responseAuth =
          await _authFirebase.createUserEmail(email: email, password: password);
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
      final responseAuth =
          await _authFirebase.signInWithEmail(email: email, password: password);
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
}
