import 'package:aero_delivery/domain/repositories/auth_firebase_repository.dart';
import 'package:aero_delivery/presentation/states/profile_state.dart';
import 'package:bloc/bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final AuthFirebaseRepository authFirebaseRepository;

  ProfileCubit({
    required this.authFirebaseRepository,
  }) : super(ProfileStateLoading());

  Future<void> getProfile() async {
    final user = authFirebaseRepository.user;
    if (user != null) {
      emit(ProfileStateSignIn(user: user));
    } else {
      ProfileStateNoSignIn();
    }
  }

  Future<void> signOut() async {
    await authFirebaseRepository.signOut();
    emit(ProfileStateNoSignIn());
  }
}
