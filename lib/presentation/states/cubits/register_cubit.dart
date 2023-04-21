import 'package:aero_delivery/presentation/states/register_state.dart';
import 'package:bloc/bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  // call repository
  RegisterCubit() : super(RegisterStateNoRegister());
}
