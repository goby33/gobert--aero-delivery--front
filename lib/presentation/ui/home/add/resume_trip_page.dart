import 'package:aero_delivery/presentation/states/add_trip_state.dart';
import 'package:aero_delivery/presentation/states/cubits/add_trip_cubit.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/button_add_trip.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/title_add_trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ResumeTripPage extends StatelessWidget {
  ResumeTripPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddTripCubit, AddTripState>(
      listener: (context, state) => state.maybeMap(
        success: (value) {
          // clear history navigation
          context.go('/view_trip/${state.id}'); },
        orElse: () => print('ppp'),
      ),
      builder: (context, state) {
        return BlocBuilder<AddTripCubit, AddTripState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //roadmap
                      const TitleAddTrip(title: "Resume your trip : "),
                      Text(
                        "No airport selected",
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            color: Color(0xFFF79F79)),
                      ),
                      Text(
                        "No airport selected",
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            color: Color(0xFFF79F79)),
                      ),
                      Text(
                        state.trip?.dateOfDeparture.toString() ??
                            "No airport selected",
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            color: Color(0xFFF79F79)),
                      ),
                      Text(
                        state.trip?.dateOfArrival.toString() ??
                            "No airport selected",
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            color: Color(0xFFF79F79)),
                      ),
                      ButtonAddTrip(
                        onPressed: () {
                          context.read<AddTripCubit>().saveTrip();
                        },
                        text: 'yes, add this trip',
                        isEnable: true,
                      ),
                    ]),
              ),
            );
          },
        );
      },
    );
  }
}
