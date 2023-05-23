import 'package:aero_delivery/presentation/states/cubits/add_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TripListener extends StatelessWidget {
  final Widget child;
  const TripListener({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddTripCubit, PopUpAddTripState>(
        listener: (context, state) => state.maybeMap(
              addAirportFromReady: (value) =>
                  context.push('/add_trip/date_from'),
              addDateOfDepartureReady: (value) =>
                  context.push('/add_trip/date_from/airport_to'),
              addAirportToReady: (value) =>
                  context.push('/add_trip/date_from/airport_to/date_to'),
              addDateOfArrivalReady: (value) => context
                  .push('/add_trip/date_from/airport_to/date_to/weight_free'),
              addFreeWeightReady: (value) => context.push(
                  '/add_trip/date_from/airport_to/date_to/weight_free/resume'),
              orElse: () => debugPrintDone,
            ),
        child: child);
  }
}
