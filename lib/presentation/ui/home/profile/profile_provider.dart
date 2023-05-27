import 'package:aero_delivery/domain/repositories/auth_firebase_repository.dart';
import 'package:aero_delivery/domain/repositories/user_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/cubits/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileProvider extends StatelessWidget {
  final Widget child;
  const ProfileProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(
        authFirebaseRepository: context.read<AuthFirebaseRepository>(),
        userCloudFirestoreRepository:
            context.read<UserCloudFirestoreRepository>(),
      )..getProfile(),
      child: child,
    );
  }
}
