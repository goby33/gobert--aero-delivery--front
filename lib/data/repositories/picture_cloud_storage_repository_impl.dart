import 'dart:io';

import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/data/sources/picture_cloud_storage_api.dart';
import 'package:aero_delivery/domain/repositories/picture_cloud_storage_repository.dart';

class PictureCloudStorageRepositoryImpl with PictureCloudStorageRepository {
  final PictureCloudStorageApi _pictureFirebase;

  PictureCloudStorageRepositoryImpl(this._pictureFirebase);

  @override
  Future<ApiResponse<String>> uploadPicture({
    required File file,
    required String uid,
  }) async {
    try {
      final response =
          await _pictureFirebase.uploadPicture(file: file, folderName: uid);
      if (response == null) {
        return FailResponse(0.toString(), failure: "Error user null");
      } else {
        return SuccessResponse(1.toString(), response);
      }
    } catch (e) {
      return FailResponse(e.toString(), failure: e.toString());
    }
  }
}
