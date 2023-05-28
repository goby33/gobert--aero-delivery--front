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

  Future<void> signOut();

  Future<bool> reauthenticate({
    required String email,
    required String password,
  });

  Future<void> updateProfile({
    required String name,
  });


  Future<void> updatePassword({
    required String password,
  });

  Future<void> updateEmail({
    required String email,
  });

  Future<bool> emailExists({
    required String email,
  });

  Future<void> sendPasswordResetEmail({
    required String email,
  });

  Future<void> deleteUser();

}

class _AuthFirebase implements AuthFirebaseApi {
  final FirebaseAuth _firebaseAuthApi;

  _AuthFirebase(this._firebaseAuthApi);

  @override
  Future<User?> createUserEmail({
    required String email,
    required String password,
  }) async {
    UserCredential result = await _firebaseAuthApi.createUserWithEmailAndPassword(
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

  @override
  Future<void> signOut() async {
    await _firebaseAuthApi.signOut();
  }

  @override
  Future<void> sendPasswordResetEmail({
    required String email,
  }) async {
    await _firebaseAuthApi.sendPasswordResetEmail(email: email);
  }

  // email exists
  @override
  Future<bool> emailExists({
    required String email,
  }) async {
    bool exists = false;
    try {
      final response = await _firebaseAuthApi.fetchSignInMethodsForEmail(email);
      return response.length > 0;
    } catch (e) {
      exists = false;
    }
    return exists;
  }

  //update email
  @override
  Future<void> updateEmail({
    required String email,
  }) async {
    await _firebaseAuthApi.currentUser!.updateEmail(email);
  }

  // update password
  @override
  Future<void> updatePassword({
    required String password,
  }) async {
    await _firebaseAuthApi.currentUser!.updatePassword(password);
  }

  // update profile
  @override
  Future<void> updateProfile({
    required String name,
  }) async {
    await _firebaseAuthApi.currentUser!.updateDisplayName(name);
  }

  // string password is equal to old password
  @override
  Future<bool> reauthenticate({
    required String email,
    required String password,
  }) async {
    bool isEqual = false;
    try {
      await _firebaseAuthApi.currentUser!.reauthenticateWithCredential(
        EmailAuthProvider.credential(
          email: _firebaseAuthApi.currentUser!.email!,
          password: password,
        ),
      );
      isEqual = true;
    } catch (e) {
      isEqual = false;
    }
    return isEqual;
  }

  @override
  Future<void> deleteUser() async {
    await _firebaseAuthApi.currentUser!.delete();
  }


}
