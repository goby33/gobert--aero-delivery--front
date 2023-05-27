import 'package:aero_delivery/presentation/states/add_trip_state.dart';
import 'package:aero_delivery/presentation/states/cubits/add_trip_cubit.dart';
import 'package:aero_delivery/presentation/ui/commons/search_place/search_place_widget.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/button_add_trip.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/title_add_trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AirportFromPage extends StatelessWidget {
  const AirportFromPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddTripCubit>();
    return BlocBuilder<AddTripCubit, AddTripState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TitleAddTrip(
                title: "What's your airport of Departed ?",
              ),
              SearchPlaceWidget(
                onclick: (value) {
                  bloc.addAirportFromSelected(value);
                },
              ),
              ButtonAddTrip(
                isEnable: (state is AddTripStateAirportFromSelected),
                onPressed: () {
                  GoRouter.of(context).push('/add_trip/date_from');
                },
                text: "Add this airport",
              ),
            ],
          ),
        );
      },
    );
  }
}
