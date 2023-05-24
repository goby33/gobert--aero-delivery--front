import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/data/models/user_model.dart';
import 'package:aero_delivery/domain/entities/user_entity.dart';
import 'package:aero_delivery/domain/repositories/auth_firebase_repository.dart';
import 'package:aero_delivery/domain/repositories/user_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/profile_state.dart';
import 'package:bloc/bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final AuthFirebaseRepository authFirebaseRepository;
  final UserCloudFirestoreRepository userCloudFirestoreRepository;

  ProfileCubit({
    required this.authFirebaseRepository,
    required this.userCloudFirestoreRepository,
  }) : super(ProfileStateLoading());

  Future<void> getProfile() async {
    final user = authFirebaseRepository.user;
    if (user != null) {
      final userCloudFirestoreResponse = await userCloudFirestoreRepository.getUserModel(uid: user.uid);
      if (userCloudFirestoreResponse is SuccessResponse && userCloudFirestoreResponse.data != null) {
        UserEntity userModel = userCloudFirestoreResponse.data!;
        emit(ProfileStateSignIn(user: userModel));
      } else {
        emit(
          ProfileStateFailed(
            message: userCloudFirestoreResponse.toString(),
            dateTime: DateTime.now(),
          ),
        );
      }
    } else {
      ProfileStateNoSignIn();
    }
  }

  Future<void> signOut() async {
    await authFirebaseRepository.signOut();
    emit(ProfileStateNoSignIn());
  }
}
