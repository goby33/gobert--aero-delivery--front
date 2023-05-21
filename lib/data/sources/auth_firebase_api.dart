import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthFirebaseApi {
  factory AuthFirebaseApi(FirebaseAuth firebaseAuth) = _AuthFirebase;

  Future<User?> createUserEmail({
    required String email,
    required String password,
  });

  Future<User?> signInWithEmail({
    required String email,
    required String password,
  });

  Future<User?> getCurrentUser();
}

class _AuthFirebase implements AuthFirebaseApi {
  final FirebaseAuth _firebaseAuthApi;

  _AuthFirebase(this._firebaseAuthApi);

  @override
  Future<User?> createUserEmail({
    required String email,
    required String password,
  }) async {
    UserCredential result =
        await _firebaseAuthApi.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result.user;
  }

  @override
  Future<User?> signInWithEmail({
    required String email,
    required String password,
  }) async {
    UserCredential result = await _firebaseAuthApi.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result.user;
  }

  @override
  Future<User?> getCurrentUser() async {
    return _firebaseAuthApi.currentUser;
  }
}
