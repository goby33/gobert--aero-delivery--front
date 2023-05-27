import 'package:flutter/material.dart';

class TextFieldCalendarTrip extends StatefulWidget {
  final DateTime value;
  final ValueChanged<DateTime> onChanged;

  const TextFieldCalendarTrip({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);


  @override
  State<TextFieldCalendarTrip> createState() => _TextFieldCalendarTripState();
}

class _TextFieldCalendarTripState extends State<TextFieldCalendarTrip> with RestorationMixin  {

  @override
  String? get restorationId => 'text_field_calendar_trip';

  @override
  DateTime get value => widget.value;

  @override
  ValueChanged<DateTime> get onChanged => widget.onChanged;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(_restorableDatePickerRouteFuture, 'date_picker_route_future');
  }


  final RestorableDateTime _selectedDate = RestorableDateTime(DateTime.now());
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture = RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  @pragma('vm:entry-point')
  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Color(0xFFF79F79), // header background color
              onPrimary: Color(0xFF1D263B), // header text color
              onSurface: Color(0xFF618985), // body text color
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFFEC9DED), // button text color
              ),
            ),
          ),
          child: DatePickerDialog(
            restorationId: 'date_picker_dialog',
            initialEntryMode: DatePickerEntryMode.calendarOnly,
            initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
            firstDate: DateTime(2023),
            lastDate: DateTime(2024),
          ),
        );
      },
    );
  }


  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      onChanged(newSelectedDate);
    }
  }

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
          _restorableDatePickerRouteFuture.present();
        },
        child: Text("${value.day}-${value.month}-${value.year}"),
      ),
    );
  }

}
