import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SignInState with _$SignInState {
  const SignInState._();

  // no register -> initial state
  factory SignInState.noSignIn() = SignInStateNoSignIn;

  // failed -> state when user is not successfully registered -> show error message
  factory SignInState.failed({
    required DateTime dateTime,
    required String message,
  }) = SignInStateFailed;

  // signIn -> state when user is already registered -> go to home page
  factory SignInState.signIn() = SignInStateSignIn;

  // success -> state when user is successfully registered -> go to home page
  factory SignInState.success() = SignInStateSuccess;

  // loading -> state when user click button register
  factory SignInState.loading() = SignInStateLoading;
}
