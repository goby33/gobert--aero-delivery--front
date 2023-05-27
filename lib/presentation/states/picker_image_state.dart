import 'package:freezed_annotation/freezed_annotation.dart';

part 'picker_image_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class PickerImageState with _$PickerImageState {
  const PickerImageState._();

  //initial state
  factory PickerImageState.initial({
    required String path,
  }) = PickerImageStateInitial;

  // picture chosen
  factory PickerImageState.pictureChosen({
    required String path,
  }) = PickerImageStateChoosen;

  factory PickerImageState.loading({
    required String path,
  }) = PickerImageStateLoading;

  factory PickerImageState.uploaded() = PickerImageStateUploaded;

  factory PickerImageState.failed(
      {required DateTime dateTime,
      required String message}) = PickerImageStateFailed;

  //get path
  String get path => when(
        initial: (path) => path,
        pictureChosen: (path) => path,
        loading: (path) => path,
        uploaded: () => '',
        failed: (dateTime, message) => '',
      );
}
