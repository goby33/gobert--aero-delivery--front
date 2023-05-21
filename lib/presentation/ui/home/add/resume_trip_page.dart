import 'package:aero_delivery/presentation/states/cubits/pop_up_add_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResumeTripPage extends StatelessWidget {
  ResumeTripPage({Key? key}) : super(key: key);

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
                    Navigator.of(context).pop(); },
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      state.trip?.airportFrom ?? "No airport selected",
                      style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Nunito',
                          color: Color(0xFFF79F79)),
                    ),
                    Text(
                      state.trip?.airportTo ?? "No airport selected",
                      style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Nunito',
                          color: Color(0xFFF79F79)),
                    ),
                    Text(
                      state.trip?.dateOfDeparture.toString() ?? "No airport selected",
                      style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Nunito',
                          color: Color(0xFFF79F79)),
                    ),
                    Text(
                      state.trip?.dateOfArrival.toString() ?? "No airport selected",
                      style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Nunito',
                          color: Color(0xFFF79F79)),
                    ),
                  ]
                ),
              ),
            );
          },
    );
  }
}
