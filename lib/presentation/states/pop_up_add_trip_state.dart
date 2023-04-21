import 'package:freezed_annotation/freezed_annotation.dart';

part 'pop_up_add_trip_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class PopUpAddTripState with _$PopUpAddTripState {
  const PopUpAddTripState._();

  factory PopUpAddTripState.loading() = PopUpAddTripStateLoading;

  //step 1
  factory PopUpAddTripState.step1() = PopUpAddTripStatestep1;
  factory PopUpAddTripState.step2() = PopUpAddTripStatestep2;
  factory PopUpAddTripState.step3() = PopUpAddTripStatestep3;
  factory PopUpAddTripState.step4() = PopUpAddTripStatestep4;
  factory PopUpAddTripState.step5() = PopUpAddTripStatestep5;
  factory PopUpAddTripState.step6() = PopUpAddTripStatestep6;

  factory PopUpAddTripState.test() = PopUpAddTripStateTest;
}
