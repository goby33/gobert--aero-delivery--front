import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SplashState with _$SplashState {
  const SplashState._();

  factory SplashState.loading() = SplashStateLoading;

  factory SplashState.connected() = SplashStateConnected;
  factory SplashState.noConnected() = SplashStateNoConnected;

  factory SplashState.failed(
      {required DateTime dateTime,
        required String message}) = SplashStateFailed;
}
