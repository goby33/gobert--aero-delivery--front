import 'dart:io';

import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/repositories/auth_firebase_repository.dart';
import 'package:aero_delivery/domain/repositories/picker_photo_repository.dart';
import 'package:aero_delivery/domain/repositories/picture_cloud_storage_repository.dart';
import 'package:aero_delivery/domain/repositories/user_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/picker_image_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class PickerImageCubit extends Cubit<PickerImageState> {
  final AuthFirebaseRepository authFirebaseRepository;
  final PickerPhotoRepository pickerPhotoRepository;
  final PictureCloudStorageRepository pictureCloudStorageRepository;
  final UserCloudFirestoreRepository userCloudFirestoreRepository;

  PickerImageCubit({
    required this.authFirebaseRepository,
    required this.pickerPhotoRepository,
    required this.pictureCloudStorageRepository,
    required this.userCloudFirestoreRepository,
  }) : super(PickerImageStateInitial(
          path: '',
        ));

  Future<void> pickImage({
    required ImageSource source,
  }) async {
    final response_photo = await pickerPhotoRepository.getImage(source: source);
    if (response_photo is SuccessResponse) {
      emit(PickerImageStateChoosen(path: response_photo.data!));
    } else {
      emit(PickerImageStateFailed(
          dateTime: DateTime.now(), message: "Error: format not supported"));
    }
  }

  Future<void> uploadPicture() async {
    String path = state.path;
    emit(PickerImageStateLoading(path: path));
    File image = File(path);
    final user = await authFirebaseRepository.user;
    if (user != null) {
      final response_upload = await pictureCloudStorageRepository.uploadPicture(
          file: image, uid: user.uid);
      if (response_upload is SuccessResponse) {
        final response_user = await userCloudFirestoreRepository
            .updateUserUrlImage(uid: user.uid, urlImage: response_upload.data!);
        if (response_user is SuccessResponse) {
          emit(PickerImageStateUploaded());
        } else {
          emit(
            PickerImageStateFailed(
              dateTime: DateTime.now(),
              message: response_user.toString(),
            ),
          );
        }
      } else {
        emit(
          PickerImageStateFailed(
            dateTime: DateTime.now(),
            message: response_upload.toString(),
          ),
        );
      }
    } else {
      emit(
        PickerImageStateFailed(
          dateTime: DateTime.now(),
          message: "Error : User is null",
        ),
      );
    }
  }

  void reset() {
    emit(PickerImageStateInitial(path: ''));
  }
}
