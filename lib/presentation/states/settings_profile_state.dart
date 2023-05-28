import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_profile_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SettingsProfileState with _$SettingsProfileState {
  const SettingsProfileState._();

  // initial state
  const factory SettingsProfileState.initial() = SettingsProfileStateInitial;
  factory SettingsProfileState.loading() = SettingsProfileStateLoading;
  // success update
  factory SettingsProfileState.success() = SettingsProfileStateSuccess;

  // error text-field
  factory SettingsProfileState.errorTextField({
    required String message,
    required DateTime dateTime,
  }) = SettingsProfileStateErrorTextField;

  // user no connected error
  factory SettingsProfileState.errorUserNoConnected({
    required String message,
    required DateTime dateTime,
  }) = SettingsProfileStateErrorUserNoConnected;

  factory SettingsProfileState.failed(
      {required DateTime dateTime,
      required String message}) = SettingsProfileStateFailed;

  // get error
  String? get error {
    return map(
      initial: (_) => null,
      loading: (_) => null,
      success: (_) => null,
      errorTextField: (e) => e.message,
      errorUserNoConnected: (e) => e.message,
      failed: (e) => e.message,
    );
  }
}
