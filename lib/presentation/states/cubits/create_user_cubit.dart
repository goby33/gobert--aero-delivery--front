import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/repositories/auth_firebase_repository.dart';
import 'package:aero_delivery/domain/repositories/user_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/create_user_state.dart';
import 'package:bloc/bloc.dart';

class CreateUserCubit extends Cubit<CreateUserState> {
  final AuthFirebaseRepository authFirebaseRepository;
  final UserCloudFirestoreRepository userFirebaseRepository;

  CreateUserCubit({
    required this.authFirebaseRepository,
    required this.userFirebaseRepository,
  }) : super(CreateUserStateNoRegister());

  // method to create user
  Future<void> createUser({
    required String firstNameValue,
    required String lastNameValue,
    required String emailValue,
    required String passwordValue,
    required String passwordConfirmationValue,
  }) async {
    emit(CreateUserStateLoading());
    // delete space
    emailValue = emailValue.trim();
    passwordValue = passwordValue.trim();
    passwordConfirmationValue = passwordConfirmationValue.trim();
    firstNameValue = firstNameValue.trim();
    lastNameValue = lastNameValue.trim();
    // check if length password is > 6
    if (passwordValue.length < 6) {
      emit(CreateUserStateFailed(
        dateTime: DateTime.now(),
        message: "Password must be at least 6 characters",
      ));
      return;
    }
    // check if password and password confirmation are the same
    if (passwordValue != passwordConfirmationValue) {
      emit(CreateUserStateFailed(
        dateTime: DateTime.now(),
        message: "Password and password confirmation are not the same",
      ));
      return;
    }
    // call repository
    final responseAuthRepository =
        await authFirebaseRepository.createAccountWithEmail(
      email: emailValue,
      password: passwordValue,
    );
    if (responseAuthRepository is SuccessResponse) {
      // add user to firestore
      await userFirebaseRepository.createUser(
        uid: responseAuthRepository.data!.uid,
        firstName: firstNameValue,
        lastName: lastNameValue,
        email: emailValue,
        password: passwordValue,
        birthday: DateTime.now(),
      );
      emit(CreateUserStateSuccess());
    } else {
      emit(CreateUserStateFailed(
        dateTime: DateTime.now(),
        message: responseAuthRepository.failure ?? "Error to create user",
      ));
    }
  }
}
