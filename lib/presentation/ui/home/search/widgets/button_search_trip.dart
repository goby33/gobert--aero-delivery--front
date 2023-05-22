import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonSearchTrip extends StatelessWidget {
  ButtonSearchTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:  () => context.push('/results_search_trip'),
      child: Text("Search"),
    );;
  }
}
