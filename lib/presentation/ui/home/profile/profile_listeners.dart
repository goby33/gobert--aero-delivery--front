import 'package:aero_delivery/presentation/states/cubits/profile_cubit.dart';
import 'package:aero_delivery/presentation/states/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProfileListeners extends StatelessWidget {
  final Widget child;
  const ProfileListeners({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listener: (context, state) => state.maybeMap(
        noSignIn: (value) => context.push('/auth'),
        failed: (value) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              action: SnackBarAction(
                label: 'close',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
              content: Text(value.message),
            ),
          );
          context.push('/auth');
          return null;
        },
        orElse: () => null,
      ),
      child: child,
    );
  }
}
