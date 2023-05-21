import 'package:aero_delivery/presentation/states/cubits/pop_up_add_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/button_add_trip.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/result_search_add_trip.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/textField_add_trip.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/title_add_trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AirportToPage extends StatelessWidget {
  const AirportToPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopUpAddTripCubit, PopUpAddTripState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    context.read<PopUpAddTripCubit>().addDateOfDepartureSelected(state.trip!.dateOfDeparture!);
                    Navigator.of(context).pop();},
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const TitleAddTrip(
                      title: "What's your airport of arrival ?",
                    ),
                    SizedBox(
                      height: 300,
                      child: Column(
                        children: [
                          TextFieldAddTrip(
                            onChanged: (value) {
                              context.read<PopUpAddTripCubit>().searchAirport(value);
                            },
                            onClear: () => context.read<PopUpAddTripCubit>().clearAirportTo(),
                            hideText: (state is PopUpAddTripStateAddAirportToSelected),
                            value:
                            (state is PopUpAddTripStateAddAirportToSelected) ? state.trip?.airportFrom ?? "" : null,
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
                                context.read<PopUpAddTripCubit>().addAirportToSelected(value);
                              },
                            )
                        ],
                      ),
                    ),
                    ButtonAddTrip(
                      isEnable: (state is PopUpAddTripStateAddAirportToSelected),
                      onPressed: () { context.read<PopUpAddTripCubit>().addAirportToReady(); context.push('/add_trip/date_from/airport_to/date_to');  },
                      text: "Add this airport",
                    ),
                  ],
                ),
              ),
            );
          },
    );
  }
}
