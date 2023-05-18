import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CreateUserState with _$CreateUserState {
  const CreateUserState._();

  // no register -> initial state
  factory CreateUserState.noRegister() = CreateUserStateNoRegister;

  // register -> state when user is already registered -> go to home page
  factory CreateUserState.register() = CreateUserStateRegister;

  // loading -> state when user click button register
  factory CreateUserState.loading() = CreateUserStateLoading;

  //success -> state when user is successfully registered -> go to home page
  factory CreateUserState.success() = CreateUserStateSuccess;

  // failed -> state when user is not successfully registered -> show error message
  factory CreateUserState.failed({
    required DateTime dateTime,
    required String message,
  }) = CreateUserStateFailed;
}
