import 'package:aero_delivery/domain/repositories/auth_repository.dart';
import 'package:aero_delivery/presentation/states/sign_in_state.dart';
import 'package:bloc/bloc.dart';

class SignInCubit extends Cubit<SignInState> {
  final AuthRepository authRepository;
  // call repository
  SignInCubit({
    required this.authRepository,
  }) : super(SignInStateNoSignIn());

  void test() {
    print("test");
  }
}
