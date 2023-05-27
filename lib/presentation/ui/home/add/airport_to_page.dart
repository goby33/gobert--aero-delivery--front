import 'package:aero_delivery/presentation/states/add_trip_state.dart';
import 'package:aero_delivery/presentation/states/cubits/add_trip_cubit.dart';
import 'package:aero_delivery/presentation/ui/commons/search_place/search_place_widget.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/button_add_trip.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/title_add_trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AirportToPage extends StatelessWidget {
  const AirportToPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddTripCubit>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pop();
              //TODO: add pop up
            }),
      ),
      body: BlocBuilder<AddTripCubit, AddTripState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TitleAddTrip(
                  title: "What's your airport of Arrival ?",
                ),
                SearchPlaceWidget(
                  onclick: (value) {
                    bloc.addAirportToSelected(value);
                  },
                ),
                ButtonAddTrip(
                  isEnable: (state is AddTripStateAirportToSelected),
                  onPressed: () {
                    GoRouter.of(context).push('/add_trip/date_from/airport_to/date_to/');
                  },
                  text: "Add this airport",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
