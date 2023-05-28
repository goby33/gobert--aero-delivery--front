import 'package:aero_delivery/presentation/states/cubits/settings_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsProvider extends StatelessWidget {
  final Widget child;
  const SettingsProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsProfileCubit(
        authFirebaseRepository: context.read(),
        userCloudFirestoreRepository: context.read(),
      ),
      child: child,
    );
  }
}
