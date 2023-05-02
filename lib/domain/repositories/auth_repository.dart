import 'dart:async';

import 'package:aero_delivery/config/api_response.dart';
import 'package:firebase_auth/firebase_auth.dart';

mixin AuthRepository {
  Future<ApiResponse> createAccountWithEmail(
      {required String email, required String password});

  Future<ApiResponse> signInWithEmail({
    required String email,
    required String password,
  });

  Future<ApiResponse> getCurrentUser();
  User? get user;
}

//TODO
//LOGIN
//LOGOUT
//DELETE ACCOUNT
//FORGOT PASSWORD
