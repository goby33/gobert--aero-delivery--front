import 'package:aero_delivery/presentation/states/cubits/pop_up_search_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/pop_up_search_trip_state.dart';
import 'package:aero_delivery/presentation/ui/home/search/widgets/result_search_trip.dart';
import 'package:aero_delivery/presentation/ui/home/search/widgets/textField_search_trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContainerFieldSearchTrip extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;

  const ContainerFieldSearchTrip({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: OutlinedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFF618985)),
          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFEDF4ED)),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: () {
          {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return BlocProvider(
                  create: (context) => PopUpSearchTripCubit(
                    googlePlaceRepository: context.read(),
                  ),
                  child: BlocBuilder<PopUpSearchTripCubit, PopUpSearchTripState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 600,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text('Modal BottomSheet'),
                              SizedBox(
                                width: 350,
                                height: 300,
                                child: Column(
                                  children: [
                                    TextFieldSearchTrip(
                                        onChanged: (value) {
                                          context.read<PopUpSearchTripCubit>().searchAirport(value);
                                        },
                                        onClear: () {},
                                        hideText: false),
                                    if (state is PopUpSearchTripStateResult)
                                      ResultSearchTrip(
                                        onPressed: (String) {
                                          onChanged(String);
                                          Navigator.pop(context);
                                        },
                                        resultSearch: state.resultSearch,
                                      ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                child: const Text('Close BottomSheet'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          }
          ;
        },
        child: Text(hintText),
      ),
    );
  }
}
