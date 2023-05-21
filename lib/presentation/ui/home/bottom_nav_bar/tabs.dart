import 'package:aero_delivery/presentation/ui/home/bottom_nav_bar/scaffold_with_nav_bar_tab_item.dart';
import 'package:flutter/material.dart';

List<ScaffoldWithNavBarTabItem> tabs = [
  const ScaffoldWithNavBarTabItem(
    initialLocation: '/home',
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  const ScaffoldWithNavBarTabItem(
    initialLocation: '/add_trip',
    icon: Icon(Icons.add_location_alt),
    label: 'Publish',
  ),
  const ScaffoldWithNavBarTabItem(
    initialLocation: '/messages',
    icon: Icon(Icons.message),
    label: 'Messages',
  ),
  const ScaffoldWithNavBarTabItem(
    initialLocation: '/profile',
    icon: Icon(Icons.account_circle),
    label: 'Profile',
  )
];
