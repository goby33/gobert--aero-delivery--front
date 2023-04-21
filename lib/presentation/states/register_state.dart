import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class RegisterState with _$RegisterState {
  const RegisterState._();

  // no register
  factory RegisterState.noRegister() = RegisterStateNoRegister;
  factory RegisterState.loading() = RegisterStateLoading;
  factory RegisterState.failed({
    required DateTime dateTime,
    required String message,
  }) = RegisterStateFailed;
}
