import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopUpAddTripCubit extends Cubit<PopUpAddTripState> {
  // call repository
  PopUpAddTripCubit() : super(PopUpAddTripStateLoading());

  void addAirportFrom(String airportName) {
    emit(PopUpAddTripStateLoading());
    if (airportName.isNotEmpty) {
      emit(PopUpAddTripStateTest());
    }
  }
}
