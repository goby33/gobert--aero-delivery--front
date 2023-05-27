import 'package:aero_delivery/presentation/states/cubits/trip_view_cubit.dart';
import 'package:aero_delivery/presentation/states/trip_view_state.dart';
import 'package:aero_delivery/presentation/ui/trip_view/widgets/trip_line_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TripViewPage extends StatelessWidget {
  final String id;

  const TripViewPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TripViewCubit(
        tripCloudFirestoreRepository: context.read(),
      )..getTrip(idTrip: id),
      child: BlocBuilder<TripViewCubit, TripViewState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop()
              ),
              title: Text('TripViewPage'),
            ),
            body: (state is TripViewStateLoading)
                ? const Center(child: CircularProgressIndicator())
                : Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        // title
                        Text(
                          '${state.searchTripEntity!.resultsTrip.dateOfDeparture!.day}/${state.searchTripEntity!.resultsTrip.dateOfDeparture!.month}/${state.searchTripEntity!.resultsTrip.dateOfDeparture!.year}',
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TripLineTile(
                          title: state.searchTripEntity!.resultsTrip.airportFrom!.name!,
                          icon: Icons.flight_takeoff,
                          isFirst: true,
                          isLast: false,
                        ),
                        TripLineTile(
                          title: state.searchTripEntity!.resultsTrip.airportTo!.name!,
                          icon: Icons.flight_land,
                          isFirst: false,
                          isLast: true,
                        ),

                        // elevation button : contact the user who posted the trip
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Contact ${state.searchTripEntity!.resultsTrip.uidUser!}'),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
