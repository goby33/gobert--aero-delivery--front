import 'package:aero_delivery/presentation/ui/auth/auth_page.dart';
import 'package:aero_delivery/presentation/ui/bottom_nav_bar/scaffold_with_bottom_nav_bar.dart';
import 'package:aero_delivery/presentation/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
     navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithBottomNavBar(child: child);
      },
      routes: [
        GoRoute(
          path: 'auth',
          builder: (context, state) => const AuthPage(),
        ),
        GoRoute(
          path: 'home',
          builder: (context, state) => const HomePage(),
        ),
      ]
    ),
    //add_trip/airport_from/date_from/airport_to/date_to/weight_free/resume
  ],
  //errorBuilder: (context, state) => ErrorScreen(state.error),
);
