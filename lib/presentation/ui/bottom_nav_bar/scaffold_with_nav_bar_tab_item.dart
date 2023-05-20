import 'package:flutter/cupertino.dart';

class ScaffoldWithNavBarTabItem extends BottomNavigationBarItem {

  /// The initial location/path
  final String initialLocation;


  const ScaffoldWithNavBarTabItem({
    required this.initialLocation,
    required Widget icon,
    String? label,
  }) : super(icon: icon, label: label);
}
