import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TripLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final String title;
  final IconData icon;

  const TripLineTile({
    Key? key,
    required this.isFirst,
    required this.isLast,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      axis: TimelineAxis.vertical,
      alignment: TimelineAlign.manual,
      lineXY: 0.10,
      isFirst: isFirst,
      isLast: isLast,
      beforeLineStyle: const LineStyle(
        color: Color(0xFFEC9DED),
        thickness: 4,
      ),
      indicatorStyle: IndicatorStyle(
        width: 33,
        color: const Color(0xFF618985),
        padding: const EdgeInsets.all(6),
        iconStyle: IconStyle(
          color: const Color(0xFFEDF4ED),
          iconData: icon,
        ),
      ),
      hasIndicator: true,
      endChild: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          constraints: const BoxConstraints(
            minHeight: 120,
          ),
          color: Colors.transparent,
          child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ),
      ),
    );
  }
}
