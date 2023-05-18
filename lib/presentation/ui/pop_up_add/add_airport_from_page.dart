import 'package:aero_delivery/presentation/states/cubits/pop_up_add_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AddAirportFromPage extends StatelessWidget {
  const AddAirportFromPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PopUpAddTripCubit(),
      child: BlocListener<PopUpAddTripCubit, PopUpAddTripState>(
        listener: (context, state) => state.maybeMap(
          addAirportFromReady: (value) => context.push('/add/paris'),
          orElse: () => print('ppp'),
        ),
        child: BlocBuilder<PopUpAddTripCubit, PopUpAddTripState>(
          builder: (context, state) {
            //button to add a package
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("What's your airport of arrived ?",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Nunito',
                          color: Color(0xFFF79F79))),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Airport',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<PopUpAddTripCubit>().addAirportFrom("toto");
                    },
                    child: const Text('Continue'),
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
