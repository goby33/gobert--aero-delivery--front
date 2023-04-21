import 'package:aero_delivery/presentation/states/sign_in_state.dart';
import 'package:bloc/bloc.dart';

class SignInCubit extends Cubit<SignInState> {
  // call repository
  SignInCubit() : super(SignInStateNoSignIn());
}
