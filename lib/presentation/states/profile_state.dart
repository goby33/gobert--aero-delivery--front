import 'package:aero_delivery/data/models/user_model.dart';
import 'package:aero_delivery/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ProfileState with _$ProfileState {
  const ProfileState._();

  factory ProfileState.loading() = ProfileStateLoading;

  factory ProfileState.noSignIn() = ProfileStateNoSignIn;

  factory ProfileState.signIn({required UserEntity user}) = ProfileStateSignIn;

  factory ProfileState.failed(
      {required DateTime dateTime,
      required String message}) = ProfileStateFailed;

  UserEntity? get user => maybeMap(
        signIn: (value) => value.user,
        orElse: () => null,
      );
}
