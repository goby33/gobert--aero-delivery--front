import 'package:flutter/material.dart';

class TitleAddTrip extends StatelessWidget {
  final String title;

  const TitleAddTrip({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(title,
      style: const TextStyle(
        fontSize: 30,
        fontFamily: 'Nunito',
        color: Color(0xFFF79F79),
      ),
    );
  }
}
