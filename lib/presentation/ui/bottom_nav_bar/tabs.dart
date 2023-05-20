import 'package:aero_delivery/presentation/ui/bottom_nav_bar/scaffold_with_nav_bar_tab_item.dart';
import 'package:flutter/material.dart';

List<ScaffoldWithNavBarTabItem> tabs = [
  const ScaffoldWithNavBarTabItem(
    initialLocation: '/a',
    icon: Icon(Icons.home),
    label: 'Section A',
  ),
  const ScaffoldWithNavBarTabItem(
    initialLocation: '/b',
    icon: Icon(Icons.settings),
    label: 'Section B',
  ),
];
