import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthFirebase {
  final FirebaseAuth _firebaseAuth;

  AuthFirebase(this._firebaseAuth);


  Future<User?> signUp({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
