import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

abstract class PictureCloudStorageApi {
  factory PictureCloudStorageApi(FirebaseStorage firebaseStorage) =
      _PictureCloudStorageApi;

  Future<String> uploadPicture({
    required File file,
    required String folderName,
  });
}

class _PictureCloudStorageApi implements PictureCloudStorageApi {
  final FirebaseStorage _firebaseStorage;

  _PictureCloudStorageApi(this._firebaseStorage);

  @override
  Future<String> uploadPicture({
    required File file,
    required String folderName,
  }) async {
    final path = file.path;
    final name = path.split('/').last;
    final format = name.split(".").last;
    final photoName = "profile.$format";

    final storageRef = _firebaseStorage.ref();
    final mountainsRef = storageRef.child(photoName);
    final mountainImagesRef = storageRef.child("images/$folderName/$photoName");
    assert(mountainsRef.name == mountainImagesRef.name);
    assert(mountainsRef.fullPath != mountainImagesRef.fullPath);
    await mountainImagesRef.putFile(file);
    return mountainImagesRef.getDownloadURL();
  }
}
