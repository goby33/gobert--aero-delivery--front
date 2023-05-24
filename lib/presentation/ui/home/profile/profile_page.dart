import 'package:aero_delivery/presentation/states/cubits/profile_cubit.dart';
import 'package:aero_delivery/presentation/states/profile_state.dart';
import 'package:aero_delivery/presentation/ui/home/profile/profile_listeners.dart';
import 'package:aero_delivery/presentation/ui/home/profile/profile_provider.dart';
import 'package:aero_delivery/presentation/ui/home/profile/widgets/profile_page_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileProvider(
      child: ProfileListeners(
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state is ProfileStateSignIn) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ProfileCubit>().getProfile();
                },
                child: ListView(
                  padding: const EdgeInsets.only(bottom: 20),
                  children:  [
                    ProfilePageHeader(
                      name: state.user.firstName,
                      uid: "unknown",
                      photoUrl: state.user.urlImage,
                    ),
                  ],
                ),
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
