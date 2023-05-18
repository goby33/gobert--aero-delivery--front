import 'package:aero_delivery/domain/repositories/auth_repository.dart';
import 'package:aero_delivery/presentation/states/profile_state.dart';
import 'package:bloc/bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final AuthRepository authRepository;

  ProfileCubit({
    required this.authRepository,
  }) : super(ProfileStateLoading());

  Future<void> getProfile() async {
    final user = authRepository.user;
    if (user != null) {
      emit(ProfileStateSignIn(user: user));
    } else {
      ProfileStateNoSignIn();
    }
  }
}
