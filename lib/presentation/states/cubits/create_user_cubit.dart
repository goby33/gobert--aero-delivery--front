import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/repositories/auth_repository.dart';
import 'package:aero_delivery/presentation/states/create_user_state.dart';
import 'package:bloc/bloc.dart';

class CreateUserCubit extends Cubit<CreateUserState> {
  final AuthRepository authRepository;

  CreateUserCubit({
    required this.authRepository,
  }) : super(CreateUserStateNoRegister());

  // method to create user
  Future<void> createUser({
    required String emailValue,
    required String passwordValue,
    required String passwordConfirmationValue,
  }) async {
    emit(CreateUserStateLoading());
    // delete space
    emailValue = emailValue.trim();
    passwordValue = passwordValue.trim();
    passwordConfirmationValue = passwordConfirmationValue.trim();
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
    final responseAuthRepository = await authRepository.createAccountWithEmail(
      email: emailValue,
      password: passwordValue,
    );
    if (responseAuthRepository is SuccessResponse) {
      emit(CreateUserStateSuccess());
    } else {
      emit(CreateUserStateFailed(
        dateTime: DateTime.now(),
        message: responseAuthRepository.failure ?? "Error to create user",
      ));
    }
  }
}
