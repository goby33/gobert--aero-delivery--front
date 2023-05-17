import 'package:aero_delivery/presentation/states/cubits/pop_up_add_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
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
              Navigator.of(context).pop();
            },
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF618985),
        title: const Text('Add a package to send'),
      ),
      backgroundColor: const Color(0XFFEDF4ED),
      body: Center(
        child: Text(
          'AddAirportFromPage',
          style: Theme.of(context).textTheme.headline4,
        )
      )
    );
  }
}
