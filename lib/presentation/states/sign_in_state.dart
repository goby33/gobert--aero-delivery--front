import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SignInState with _$SignInState {
  const SignInState._();

  // no register
  factory SignInState.noSignIn() = SignInStateNoSignIn;
  factory SignInState.failed({
    required DateTime dateTime,
    required String message,
  }) = SignInStateFailed;
  factory SignInState.loading() = SignInStateLoading;
}
