import 'package:aero_delivery/presentation/states/providers/providers.dart';
import 'package:aero_delivery/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: repositories,
      child: MultiBlocProvider(
        providers: blocs,
        child: Builder(
          builder: (context) {
            return MaterialApp.router(
              title: 'Pipo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              routerConfig: appRouter,
            );
          },
        ),
      ),
    );
  }
}
