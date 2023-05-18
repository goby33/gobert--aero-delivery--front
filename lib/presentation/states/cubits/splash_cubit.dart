import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/repositories/auth_repository.dart';
import 'package:aero_delivery/presentation/states/splash_state.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SplashCubit extends Cubit<SplashState> {
  final AuthRepository authRepository;

  SplashCubit({
    required this.authRepository,
  }) : super(SplashStateLoading());

  Future<void> isConnected() async {
    User? user = authRepository.user;
    if (user == null) {
      final resultUser = await authRepository.getCurrentUser();
      if (resultUser is SuccessResponse && resultUser.data != null) {
        emit(SplashStateConnected());
      } else {
        emit(SplashStateNoConnected());
      }
    }
    emit(SplashStateConnected());
  }
}
