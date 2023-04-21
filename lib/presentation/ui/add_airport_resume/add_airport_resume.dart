import 'package:aero_delivery/presentation/states/cubits/pop_up_add_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAirportResumePage extends StatelessWidget {
  const AddAirportResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF618985),
        title: const Text('Add a package to send'),
      ),
      backgroundColor: const Color(0XFFEDF4ED),
      body: BlocBuilder<PopUpAddTripCubit, PopUpAddTripState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Resume  ',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Nunito',
                    color: Color(0xFFF79F79),
                  ),
                ),

                // go router arguments
                //
                // TextField search  + search icon in the right + result list
              ],
            ),
          );
        },
      ),
    );
  }
}
