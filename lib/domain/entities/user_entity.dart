import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String lastName,
    required String firstName,
    required String email,
    required String urlImage,
    required DateTime birthday,
  }) = _UserEntity;
}
