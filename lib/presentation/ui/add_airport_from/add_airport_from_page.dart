import 'package:aero_delivery/presentation/states/cubits/pop_up_add_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:aero_delivery/presentation/states/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AddAirportFromPage extends StatelessWidget {
  const AddAirportFromPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF618985),
        title: const Text('Add a package to send'),
      ),
      backgroundColor: const Color(0XFFEDF4ED),
      body: BlocConsumer<PopUpAddTripCubit, PopUpAddTripState>(
        listener: (context, state) => state.maybeMap(
          test: (value) => context.push('/add/mmmmm/'),
          orElse: () => null,
        ),
        builder: (context, state) {
          return BlocBuilder<PopUpAddTripCubit, PopUpAddTripState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'From Airport ?  ',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Nunito',
                        color: Color(0xFFF79F79),
                      ),
                    ),
                    //
                    // TextField search  + search icon in the right + result list
                    TextField(
                      style: const TextStyle(
                        color: Color(0xFF618985),
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.all(10),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF618985)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        suffixIcon: IconButton(
                          color: const Color(0xFF618985),
                          icon: const Icon(Icons.search),
                          onPressed: () {},
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Color(0xFF618985)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => context
                          .read<PopUpAddTripCubit>()
                          .addAirportFrom("Helooo"),
                      child: const Center(
                        child: Text('Next'),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
