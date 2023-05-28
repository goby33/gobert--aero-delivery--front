import 'package:aero_delivery/presentation/states/cubits/search_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/search_trip_state.dart';
import 'package:aero_delivery/presentation/ui/home/search/widgets/button_search_trip.dart';
import 'package:aero_delivery/presentation/ui/home/search/widgets/container_search_trip.dart';
import 'package:aero_delivery/presentation/ui/home/search/widgets/segmented_button_trip.dart';
import 'package:aero_delivery/presentation/ui/home/search/widgets/text_field_calendar.trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SearchTripCubit>();
    return  Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity, // Widget en arrière plan ici
          ),
          Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                ),
              ), // Widget en premier plan ici
            ),
          Positioned(
            bottom: 160,
            left: 40,
            child: BlocConsumer<SearchTripCubit, SearchTripState>(
              listener: (context, state) {
                if (state is SearchTripStateSearchResult) {
                  context.push('/results_search_trip');
                }
              },
              builder: (context, state) {
                return Container(
                  width: 320,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF79F79),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContainerFieldSearchTrip(
                        onChanged: (value) =>
                            bloc.airportFromSelected(value),
                        hintText: state.searchTripEntity?.airportFrom ??
                            "Departure",
                      ),
                      ContainerFieldSearchTrip(
                        onChanged: (value) =>
                            bloc.airportToSelected(value),
                        hintText:
                        state.searchTripEntity?.airportTo ?? "Arrival",
                      ),
                      TextFieldCalendarTrip(
                        onChanged: (value) => bloc.dateSelected(value),
                        value: (state.searchTripEntity?.dateOfDeparture ??
                            DateTime.now()),
                      ),
                      SegmentedButtonTrip(),
                      ButtonSearchTrip(
                        onPressed: () => bloc.search(),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
    );

  }
}
