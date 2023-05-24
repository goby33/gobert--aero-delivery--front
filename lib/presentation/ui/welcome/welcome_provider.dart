import 'package:aero_delivery/domain/repositories/auth_firebase_repository.dart';
import 'package:aero_delivery/domain/repositories/picker_photo_repository.dart';
import 'package:aero_delivery/domain/repositories/picture_cloud_storage_repository.dart';
import 'package:aero_delivery/domain/repositories/user_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/cubits/picker_image_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeProvider extends StatelessWidget {
  final Widget child;
  const WelcomeProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PickerImageCubit(
        authFirebaseRepository: context.read<AuthFirebaseRepository>(),
        pickerPhotoRepository: context.read<PickerPhotoRepository>(),
        pictureCloudStorageRepository: context.read<PictureCloudStorageRepository>(),
        userCloudFirestoreRepository: context.read<UserCloudFirestoreRepository>(),
      ),
      child: child,
    );
  }
}
