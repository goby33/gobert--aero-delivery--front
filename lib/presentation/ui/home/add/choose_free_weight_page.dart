import 'package:aero_delivery/presentation/states/cubits/add_trip_cubit.dart';

import 'package:aero_delivery/presentation/states/pop_up_add_trip_state.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/button_add_trip.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/title_add_trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ChooseFreeWeightPage extends StatelessWidget {
  const ChooseFreeWeightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AddTripCubit, PopUpAddTripState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    context.read<AddTripCubit>().addDateOfArrivalSelected(state.trip!.dateOfArrival!);
                    Navigator.of(context).pop();},
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const TitleAddTrip(title: 'How much free weight do you have ?'),
                    InkWell(
                      onTap: () => context.read<AddTripCubit>().addFreeWeightSelected("small"),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            style: (state.trip?.freeWeight == "small") ? BorderStyle.solid : BorderStyle.none,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/package_200.png',
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => context.read<AddTripCubit>().addFreeWeightSelected("medium"),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            style: (state.trip?.freeWeight == "medium") ? BorderStyle.solid : BorderStyle.none,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/package_200.png',
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => context.read<AddTripCubit>().addFreeWeightSelected("large"),
                      child: Container(

                        padding: const EdgeInsets.all(8.0),
                        width: 200,
                        decoration: BoxDecoration(

                          border: Border.all(
                            color: Colors.black,
                            style: (state.trip?.freeWeight == "large") ? BorderStyle.solid : BorderStyle.none,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/package_200.png',
                        ),
                      ),
                    ),
                    ButtonAddTrip(
                      // TODO: remove this
                      onPressed: ()  {context.read<AddTripCubit>().addFreeWeightReady(); context.push('/add_trip/date_from/airport_to/date_to/weight_free/resume');  },
                      text: 'Next',
                      isEnable: (state is PopUpAddTripStateAddFreeWeightSelected),
                    ),
                  ],
                ),
              ),
            );
          },
    );
  }
}
