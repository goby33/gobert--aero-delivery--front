import 'package:aero_delivery/domain/repositories/auth_firebase_repository.dart';
import 'package:aero_delivery/domain/repositories/picker_photo_repository.dart';
import 'package:aero_delivery/domain/repositories/picture_cloud_storage_repository.dart';
import 'package:aero_delivery/domain/repositories/user_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/cubits/picker_image_cubit.dart';
import 'package:aero_delivery/presentation/states/cubits/profile_cubit.dart';
import 'package:aero_delivery/presentation/ui/home/profile/widgets/pop_up/pop_up_profile_photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CirclePhoto extends StatelessWidget {
  final String urlPhoto;

  const CirclePhoto({
    Key? key,
    required this.urlPhoto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CircleAvatar(
        radius: 70.0,
        backgroundColor: Colors.brown,
        child: (urlPhoto != '')
            ? CircleAvatar(
                radius: 68.0,
                backgroundImage: Image.network(
                  urlPhoto,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ).image,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () => _showModal(buildContext: context),
                    child: const CircleAvatar(
                      backgroundColor: Color.fromRGBO(226, 149, 120, 1),
                      radius: 17.0,
                      child: Icon(
                        Icons.camera_alt,
                        size: 20.0,
                        color: Color(0xFF404040),
                      ),
                    ),
                  ),
                ),
              )
            : const CircleAvatar(
                radius: 68.0,
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
      ),
    );
  }

  void _showModal({
    required BuildContext buildContext,
  }) {
    showModalBottomSheet(
      context: buildContext,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      backgroundColor: const Color.fromRGBO(237, 246, 249, 1),
      builder: (_) => BlocProvider(
        create: (context) => PickerImageCubit(
          authFirebaseRepository: context.read<AuthFirebaseRepository>(),
          pickerPhotoRepository: context.read<PickerPhotoRepository>(),
          pictureCloudStorageRepository: context.read<PictureCloudStorageRepository>(),
          userCloudFirestoreRepository: context.read<UserCloudFirestoreRepository>(),
        ),
        child: PopUpProfilePhoto(),
      ),
    ).then((value) async {
      if (value != null) {
        if (value == "updated") {
          await buildContext.read<ProfileCubit>().getProfile();
        }
      }
    });
  }
}
