import 'package:aero_delivery/presentation/states/add_trip_state.dart';
import 'package:aero_delivery/presentation/states/cubits/add_trip_cubit.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/button_add_trip.dart';
import 'package:aero_delivery/presentation/ui/home/add/widgets/title_add_trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';

class DateToPage extends StatelessWidget {
  DateToPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTripCubit, AddTripState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TitleAddTrip(title: 'What is the date of your arrival ?'),
                Container(
                  child: TableCalendar(
                      locale: 'en_US',
                      rowHeight: 43,
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                      ),
                      availableGestures: AvailableGestures.all,
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay:
                          (state is AddTripStateDateOfArrivalSelected)
                              ? state.trip?.dateOfArrival ?? DateTime.now()
                              : DateTime.now(),
                      selectedDayPredicate: (day) => isSameDay(
                          day, state.trip?.dateOfArrival ?? DateTime.now()),
                      onDaySelected: (selectedDay, focusedDay) {
                        context
                            .read<AddTripCubit>()
                            .addDateOfArrivalSelected(focusedDay);
                      }),
                ),
                ButtonAddTrip(
                  onPressed: () {
                    context.push(
                        '/add_trip/date_from/airport_to/date_to/weight_free');
                  },
                  text: 'Next',
                  isEnable:
                      (state is AddTripStateDateOfArrivalSelected),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
