import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl with AuthRepository {
  AuthRepositoryImpl();

  @override
  Future<ApiResponse<String>> createAccount({
    required String email,
    required String password,
  }) async {
    return SuccessResponse(1.toString(), "null");
  }
}

