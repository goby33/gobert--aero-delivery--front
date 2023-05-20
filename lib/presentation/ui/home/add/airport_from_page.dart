import 'package:aero_delivery/presentation/states/cubits/pop_up_add_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/button_add_trip.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/result_search_add_trip.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/textField_add_trip.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/title_add_trip.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AirportFromPage extends StatelessWidget {
  const AirportFromPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PopUpAddTripCubit(
        googlePlaceRepository: context.read(),
      ),
      child: BlocListener<PopUpAddTripCubit, PopUpAddTripState>(
        listener: (context, state) => state.maybeMap(
          addAirportFromReady: (value) => context.push('/add/paris'),
          orElse: () => debugPrintDone,
        ),
        child: BlocBuilder<PopUpAddTripCubit, PopUpAddTripState>(
          builder: (context, state) {
            //button to add a package
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const TitleAddTrip(
                    title: "What's your airport of departure ?",
                  ),
                  SizedBox(
                    height: 300,
                    child: Column(
                      children: [
                        TextFieldAddTrip(
                          onChanged: (value) {
                            context.read<PopUpAddTripCubit>().searchAirport(value);
                          },
                          onClear: () => context.read<PopUpAddTripCubit>().clearAirportFrom(),
                          hideText: (state is PopUpAddTripStateAddAirportFromSelected),
                          value:
                              (state is PopUpAddTripStateAddAirportFromSelected) ? state.trip?.airportFrom ?? "" : null,
                        ),
                        if (state is PopUpAddTripStateLoading)
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: CircularProgressIndicator(),
                          ),
                        if (state is PopUpAddTripStateAirportResultSearch)
                          ResultSearchAddTrip(
                            resultSearch: state.resultSearch,
                            onPressed: (value) {
                              context.read<PopUpAddTripCubit>().addAirportFrom(value);
                            },
                          )
                      ],
                    ),
                  ),
                  ButtonAddTrip(
                    isEnable: (state is PopUpAddTripStateAddAirportFromSelected),
                    onPressed: () => context.read<PopUpAddTripCubit>().addAirportFrom(state.trip?.airportFrom ?? ""),
                    text: "Add this airport",
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
