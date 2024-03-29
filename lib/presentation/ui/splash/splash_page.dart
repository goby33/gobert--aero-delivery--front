import 'package:aero_delivery/presentation/states/cubits/splash_cubit.dart';
import 'package:aero_delivery/presentation/states/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(
        authFirebaseRepository: context.read(),
        userCloudFirestoreRepository: context.read(),
      ),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) => state.maybeMap(
          noConnected: (value) => context.go('/auth'),
          connected: (value) => context.go('/home'),
          orElse: () => print('ppp'),
        ),
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            context.read<SplashCubit>().isConnected();
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}
