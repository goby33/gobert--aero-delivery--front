import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/data/models/user_model.dart';
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

}
