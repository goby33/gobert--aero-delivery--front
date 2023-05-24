import 'package:aero_delivery/presentation/ui/auth/auth_page.dart';
import 'package:aero_delivery/presentation/ui/home/add/airport_to_page.dart';
import 'package:aero_delivery/presentation/ui/home/add/choose_free_weight_page.dart';
import 'package:aero_delivery/presentation/ui/home/add/date_from_page.dart';
import 'package:aero_delivery/presentation/ui/home/add/date_to_page.dart';
import 'package:aero_delivery/presentation/ui/home/add/resume_trip_page.dart';
import 'package:aero_delivery/presentation/ui/home/home_page.dart';
import 'package:aero_delivery/presentation/ui/results_search_trip/results_search_trip_page.dart';
import 'package:aero_delivery/presentation/ui/splash/splash_page.dart';
import 'package:aero_delivery/presentation/ui/trip_view/TripViewPage.dart';
import 'package:aero_delivery/presentation/ui/welcome/welcome_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/welcome/toto',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
      routes: [
        GoRoute(
          path: 'home',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: 'auth',
          builder: (context, state) => const AuthPage(),
          routes: []
        ),
      ],
    ),
    GoRoute(
      path: '/view_trip/:id',
      builder: (context, state) => TripViewPage(
        id: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      path: '/welcome/:name',
      builder: (context, state) =>  WelcomePage(name: state.pathParameters['name']!,),
    ),
    GoRoute(
      path: '/results_search_trip',
      builder: (context, state) => const ResultsSearchTripPage(),
    ),
    GoRoute(
        path: '/add_trip/date_from',
        builder: (context, state) => const DateFromPage(),
        routes: [
          GoRoute(
              path: 'airport_to',
              builder: (context, state) => const AirportToPage(),
              routes: [
                GoRoute(
                    path: 'date_to',
                    builder: (context, state) => DateToPage(),
                    routes: [
                      GoRoute(
                          path: 'weight_free',
                          builder: (context, state) =>
                              const ChooseFreeWeightPage(),
                          routes: [
                            GoRoute(
                              path: 'resume',
                              builder: (context, state) => ResumeTripPage(),
                            ),
                          ]),
                    ]),
              ]),
        ]),
    //add_trip/airport_from/date_from/airport_to/date_to/weight_free/resume
  ],
  //errorBuilder: (context, state) => ErrorScreen(state.error),
);
