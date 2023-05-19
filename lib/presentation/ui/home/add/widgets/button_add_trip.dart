import 'package:flutter/material.dart';

class ButtonAddTrip extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final bool isEnable;

  const ButtonAddTrip({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.isEnable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (isEnable) ? onPressed : null,
      child: Text(text),
    );
  }
}
