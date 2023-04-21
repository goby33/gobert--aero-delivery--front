import 'package:aero_delivery/presentation/ui/add_airport_from/add_airport_from_page.dart';
import 'package:aero_delivery/presentation/ui/add_airport_resume/add_airport_resume.dart';
import 'package:aero_delivery/presentation/ui/add_airport_to/add_airport_to_page.dart';
import 'package:aero_delivery/presentation/ui/home/home_page.dart';
import 'package:aero_delivery/presentation/ui/login/auth.dart';
import 'package:aero_delivery/presentation/ui/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (context, state) => const Auth(),
    ),
    GoRoute(
        path: '/add',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const AddAirportFromPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              // on the bottom of the stack
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          );
        },
        routes: [
          GoRoute(
            path: ':airportFrom',
            builder: (context, state) => AddAirportToPage(),
            routes: [
              GoRoute(
                path: ':airportTo',
                builder: (context, state) => const AddAirportResumePage(),
              ),
            ],
          ),
        ]),
  ],
  //errorBuilder: (context, state) => ErrorScreen(state.error),
);
