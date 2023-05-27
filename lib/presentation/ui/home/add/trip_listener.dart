import 'package:aero_delivery/presentation/states/add_trip_state.dart';
import 'package:aero_delivery/presentation/states/cubits/add_trip_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TripListener extends StatelessWidget {
  final Widget child;
  const TripListener({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddTripCubit, AddTripState>(
        listener: (context, state) => state.maybeMap(
              orElse: () => debugPrintDone,
            ),
        child: child);
  }
}
