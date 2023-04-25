import 'dart:async';

import 'package:aero_delivery/config/api_response.dart';

mixin AuthRepository {
  Future<ApiResponse> createAccount({required String email,required String password});
}
