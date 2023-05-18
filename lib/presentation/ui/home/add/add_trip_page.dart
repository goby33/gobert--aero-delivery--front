import 'package:aero_delivery/presentation/states/cubits/pop_up_add_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AddTripPage extends StatelessWidget {
  const AddTripPage({Key? key}) : super(key: key);

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
            List<String> test = [
              "ppp",
              "ppppppp"
                  "pspojkpo"
            ];
            //button to add a package
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("What's your airport of departure ?",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Nunito',
                          color: Color(0xFFF79F79))),
                  Column(
                    children: [
                      TextField(
                        onChanged: (value) => context
                            .read<PopUpAddTripCubit>()
                            .searchAirport(value),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Airport',
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Color(0xFFd8dbe2),
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(20))),
                        height: 200,
                        child: ListView.builder(
                            itemCount: test.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                selectedColor: Colors.amber,
                                focusColor: Colors.brown,
                                hoverColor: Colors.amberAccent,
                                title: Text(test[index]),
                                onTap: () {
                                  print(test[index]);
                                },
                              );
                            }),
                      ),
                    ],
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
