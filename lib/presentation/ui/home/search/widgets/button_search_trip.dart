import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonSearchTrip extends StatelessWidget {
  final Function() onPressed;
  const ButtonSearchTrip({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      child: Text("Search"),
    );
    ;
  }
}
