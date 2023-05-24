import 'package:flutter/material.dart';

class StatisticsCard extends StatelessWidget {
  const StatisticsCard(
      {required this.text,
      required this.value,
      required this.icon,
      required this.colorIcons,
      Key? key})
      : super(key: key);

  final String text;
  final int value;
  final IconData icon;
  final Color colorIcons;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon,
              color: colorIcons,
              size: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  value.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(text),
              ],
            )
          ],
        ),
      ),
    );
  }
}
