import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/repositories/auth_firebase_repository.dart';
import 'package:aero_delivery/domain/repositories/user_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/settings_profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SettingsProfileCubit extends Cubit<SettingsProfileState> {
  AuthFirebaseRepository authFirebaseRepository;
  UserCloudFirestoreRepository userCloudFirestoreRepository;

  SettingsProfileCubit({
    required this.authFirebaseRepository,
    required this.userCloudFirestoreRepository,
  }) : super(const SettingsProfileStateInitial());

  Future<void> updateName(String name) async {
    emit(SettingsProfileStateLoading());
    final user = authFirebaseRepository.user;
    if (user != null) {
      final nameResponse = await authFirebaseRepository.updateName(name: name);
      if (nameResponse is SuccessResponse) {
        final nameUserModelResponse = await userCloudFirestoreRepository.updateNameUserModel(name: name, uid: user.uid);
        if (nameUserModelResponse is SuccessResponse) {
          emit(SettingsProfileStateSuccess());
        } else {
          emit(SettingsProfileStateErrorTextField(message: nameUserModelResponse.toString(), dateTime: DateTime.now()));
        }
      } else {
        emit(SettingsProfileStateFailed(
          message: nameResponse.toString(),
          dateTime: DateTime.now(),
        ));
      }
    } else {
      emit(SettingsProfileStateErrorUserNoConnected(
        message: "User is null",
        dateTime: DateTime.now(),
      ));
    }
  }

  Future<void> updateEmail({
    required String email,
    required String password,
  }) async {
    emit(SettingsProfileStateLoading());
    final user = authFirebaseRepository.user;
    if (user != null) {
      final emailResponse = await authFirebaseRepository.updateEmail(email: email, password: password);
      if (emailResponse is SuccessResponse) {
        final emailUserModelResponse = await userCloudFirestoreRepository.updateEmailUserModel(email: email, uid: user.uid);
        if (emailUserModelResponse is SuccessResponse) {
          emit(SettingsProfileStateSuccess());
        } else {
          emit(SettingsProfileStateFailed(message: emailUserModelResponse.toString(), dateTime: DateTime.now()));
        }
      } else {
        emit(SettingsProfileStateErrorTextField(
          message: emailResponse.failure.toString(),
          dateTime: DateTime.now(),
        ));
      }
    } else {
      emit(SettingsProfileStateErrorUserNoConnected(
        message: "User is null",
        dateTime: DateTime.now(),
      ));
    }
  }

  Future<void> updatePassword({
    required String password,
    required String newPassword,
    required String newConfirmPassword,
  }) async {
    emit(SettingsProfileStateLoading());
    final user = authFirebaseRepository.user;
    if (newPassword == newConfirmPassword) {
      if (user != null) {
        final passwordResponse = await authFirebaseRepository.updatePassword(oldPassword: password, password: newPassword);
        if (passwordResponse is SuccessResponse) {
          emit(SettingsProfileStateSuccess());
        } else {
          emit(SettingsProfileStateFailed(
            message: passwordResponse.failure.toString(),
            dateTime: DateTime.now(),
          ));
        }
      } else {
        emit(SettingsProfileStateErrorUserNoConnected(
          message: "User is null",
          dateTime: DateTime.now(),
        ));
      }
    } else {
      emit(SettingsProfileStateErrorTextField(
        message: "Password and confirm password are not the same",
        dateTime: DateTime.now(),
      ));
    }
  }

  Future<void> deleteAccount({required String password}) async {
    emit(SettingsProfileStateLoading());
    final user = authFirebaseRepository.user;
    if (user != null) {
      final deleteResponse = await authFirebaseRepository.deleteAccount(password: password);
      if (deleteResponse is SuccessResponse) {
        final deleteUserModelResponse = await userCloudFirestoreRepository.deleteUser(uid: user.uid);
        if (deleteUserModelResponse is SuccessResponse) {
          emit(SettingsProfileStateErrorUserNoConnected(
            message: "User is null",
            dateTime: DateTime.now(),
          ));
        } else {
          emit(SettingsProfileStateFailed(message: deleteUserModelResponse.failure.toString(), dateTime: DateTime.now()));
        }
      } else {
        emit(SettingsProfileStateFailed(
          message: deleteResponse.failure.toString(),
          dateTime: DateTime.now(),
        ));
      }
    } else {
      emit(SettingsProfileStateErrorUserNoConnected(
        message: "User is null",
        dateTime: DateTime.now(),
      ));
    }
  }

  Future<void> signOut() async {
    emit(SettingsProfileStateLoading());
    final user = authFirebaseRepository.user;
    if (user != null) {
      final signOutResponse = await authFirebaseRepository.signOut();
      if (signOutResponse is SuccessResponse && signOutResponse.data != null) {
        emit(SettingsProfileState.errorUserNoConnected(
          message: "sign ou",
          dateTime: DateTime.now(),
        ));
      } else {
        emit(SettingsProfileStateFailed(
          message: signOutResponse.toString(),
          dateTime: DateTime.now(),
        ));
      }
    } else {
      emit(SettingsProfileStateErrorUserNoConnected(
        message: "User is null",
        dateTime: DateTime.now(),
      ));
    }
  }
}
