import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/entities/user_entity.dart';
import 'package:aero_delivery/domain/repositories/auth_firebase_repository.dart';
import 'package:aero_delivery/domain/repositories/user_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/splash_state.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SplashCubit extends Cubit<SplashState> {
  final AuthFirebaseRepository authFirebaseRepository;
  final UserCloudFirestoreRepository userCloudFirestoreRepository;

  SplashCubit({
    required this.authFirebaseRepository,
    required this.userCloudFirestoreRepository,
  }) : super(SplashStateLoading());

  Future<void> isConnected() async {
    User? user = authFirebaseRepository.user;
    UserEntity? userModel = userCloudFirestoreRepository.getUserModelData();

    // affectation user if null
    if (user == null) {
      final resultUser = await authFirebaseRepository.getCurrentUser();
      if (resultUser is SuccessResponse && resultUser.data != null) {
        user = resultUser.data;
      }
    }

    // user Model
    if (user != null && userModel == null) {
      final resultUserModel =
          await userCloudFirestoreRepository.getUserModel(uid: user.uid);
      if (resultUserModel is SuccessResponse && resultUserModel.data != null) {
        userModel = resultUserModel.data;
      }
    }

    // emit
    if (user != null && userModel != null) {
      emit(SplashStateConnected());
    } else {
      emit(SplashStateNoConnected());
    }
  }
}
