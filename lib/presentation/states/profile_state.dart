import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ProfileState with _$ProfileState {
  const ProfileState._();

  factory ProfileState.loading() = ProfileStateLoading;

  factory ProfileState.noSignIn() = ProfileStateNoSignIn;

  factory ProfileState.signIn({required User user}) = ProfileStateSignIn;

  factory ProfileState.failed(
      {required DateTime dateTime,
      required String message}) = ProfileStateFailed;

  User? get user => maybeMap(
        signIn: (value) => value.user,
        orElse: () => null,
      );
}
