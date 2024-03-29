import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/entities/user_entity.dart';

mixin UserCloudFirestoreRepository {
  Future<ApiResponse<void>> createUser({
    required String uid,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required DateTime birthday,
  });

  Future<ApiResponse<UserEntity>> getUserModel({
    required String uid,
  });

  UserEntity? getUserModelData();

  Future<ApiResponse<void>> updateUserUrlImage({
    required String uid,
    required String urlImage,
  });

  Future<ApiResponse<void>> updateNameUserModel({
    required String name,
    required String uid,
  });

  Future<ApiResponse<void>> updateEmailUserModel({
    required String email,
    required String uid,
  });

  Future<ApiResponse<String>> deleteUser({
    required String uid,
  });
}
