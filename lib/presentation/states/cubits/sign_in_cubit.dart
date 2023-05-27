import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/repositories/auth_firebase_repository.dart';
import 'package:aero_delivery/presentation/states/sign_in_state.dart';
import 'package:bloc/bloc.dart';

class SignInCubit extends Cubit<SignInState> {
  final AuthFirebaseRepository authFirebaseRepository;

  // call repository
  SignInCubit({
    required this.authFirebaseRepository,
  }) : super(SignInStateNoSignIn());

  // method to sign in user
  Future<void> signIn({
    required String emailValue,
    required String passwordValue,
  }) async {
    // loading state
    emit(SignInStateLoading());
    // delete space
    emailValue = emailValue.trim();
    passwordValue = passwordValue.trim();
    // call authRepository
    final responseAuthRepository = await authFirebaseRepository.signInWithEmail(
      email: emailValue,
      password: passwordValue,
    );

    if (responseAuthRepository is SuccessResponse) {
      emit(SignInStateSignIn());
    } else {
      emit(SignInStateFailed(
        dateTime: DateTime.now(),
        message: responseAuthRepository.failure ?? "Error to sign in user",
      ));
    }
  }
}
