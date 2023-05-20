import 'package:aero_delivery/presentation/ui/auth/auth_page.dart';
import 'package:aero_delivery/presentation/ui/bottom_nav_bar/scaffold_with_bottom_nav_bar.dart';
import 'package:aero_delivery/presentation/ui/home/add/airport_from_page.dart';
import 'package:aero_delivery/presentation/ui/home/add/date_from_page.dart';
import 'package:aero_delivery/presentation/ui/home/home_page.dart';
import 'package:aero_delivery/presentation/ui/home/messenger/messenger_page.dart';
import 'package:aero_delivery/presentation/ui/home/profile/profile_page.dart';
import 'package:aero_delivery/presentation/ui/home/search/search_page.dart';
import 'package:aero_delivery/presentation/ui/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute(
      path: '/add_trip/date_from',
      builder: (context, state) =>  DateFromPage(),
    ),

    ShellRoute(
     navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithBottomNavBar(child: child);
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const SearchPage(),
        ),
        GoRoute(
          path: '/add_trip',
          builder: (context, state) => const AirportFromPage()
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
        ),
        GoRoute(
          path: '/messages',
          builder: (context, state) => const MessengerPage(),
        ),
      ]
    ),
    //add_trip/airport_from/date_from/airport_to/date_to/weight_free/resume
  ],
  //errorBuilder: (context, state) => ErrorScreen(state.error),
);
