import 'package:aero_delivery/presentation/states/cubits/profile_cubit.dart';
import 'package:aero_delivery/presentation/states/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(
        authRepository: context.read(),
      )..getProfile(),
      child: BlocListener<ProfileCubit, ProfileState>(
        listener: (context, state) => state.maybeMap(
          noSignIn: (value) => context.push('/auth'),
          orElse: () => print('ppp'),
        ),
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state is ProfileStateSignIn) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ProfileCubit>().getProfile();
                },
                child: Text(state.user.uid),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
