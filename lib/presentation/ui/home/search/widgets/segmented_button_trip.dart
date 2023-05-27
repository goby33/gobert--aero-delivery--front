import 'package:flutter/material.dart';

class SegmentedButtonTrip extends StatefulWidget {
  SegmentedButtonTrip({Key? key}) : super(key: key);

  @override
  _SegmentedButtonTripState createState() {
    return _SegmentedButtonTripState();
  }
}

class _SegmentedButtonTripState extends State<SegmentedButtonTrip> {
  String calendarView = "exact date";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<String>(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFFF79F79)),
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFF618985)),
        textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
          color: Color(0xFFEDF4ED),
        )),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      segments: const <ButtonSegment<String>>[
        ButtonSegment<String>(
            value: "exact",
            label: Text('same'),
            icon: Icon(Icons.calendar_view_day)),
        ButtonSegment<String>(
            value: "3",
            label: Text('± 3'),
            icon: Icon(Icons.calendar_view_day)),
        ButtonSegment<String>(
            value: "7",
            label: Text('± 7'),
            icon: Icon(Icons.calendar_view_week)),
        ButtonSegment<String>(
            value: "14",
            label: Text('± 14'),
            icon: Icon(Icons.calendar_view_month)),
      ],
      selected: <String>{calendarView},
      onSelectionChanged: (Set<String> newSelection) {
        setState(() {
          calendarView = newSelection.first;
        });
      },
    );
  }
}
