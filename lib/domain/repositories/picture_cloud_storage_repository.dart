import 'dart:io';

import 'package:aero_delivery/config/api_response.dart';

mixin PictureCloudStorageRepository {
  Future<ApiResponse<String>> uploadPicture({
    required File file,
    required String uid,
  });
}
