import 'package:aero_delivery/presentation/states/cubits/search_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/search_trip_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ResultsSearchTripPage extends StatelessWidget {
  const ResultsSearchTripPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('ResultsSearchTripPage'),
      ),
      body: BlocProvider(
        create: (context) => SearchTripCubit(
          cloudFirestoreRepository: context.read(),
        )..getSearchTrip(airportFrom: "pp", airportTo: "pp", dateOfDeparture: DateTime.now(), dateOfArrival: DateTime.now()),
        child: BlocConsumer<SearchTripCubit, SearchTripState>(
          listener: (context, state) {},
          builder: (context, state) {
            return RefreshIndicator(
                child: ListView.separated(
                  itemCount: state.results.length,
                  separatorBuilder: (context, index) => const Divider(
                    color: Colors.black,
                  ),
                  itemBuilder: (context, index) => ListTile(
                    //TODO: add onTap
                    onTap: () => context.go('/view_trip/${state.results[index]}'),
                    title: Text(state.results[index].airportFrom),
                    subtitle: Text(state.results[index].airportTo),
                    leading: CircleAvatar(
                      child: Text("05"),
                    ),

                  ),
                ),
                onRefresh: () async {
                  await context.read<SearchTripCubit>().getSearchTrip(airportFrom: "pp", airportTo: "pp", dateOfDeparture: DateTime.now(), dateOfArrival: DateTime.now());
                });
          },
        ),
      ),
    );
  }
}
