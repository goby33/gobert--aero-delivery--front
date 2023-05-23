import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class PickerPhotoTools {
  // field
  static XFile? _imageFileList;
  static late final ImagePicker _picker;
  static PickerPhotoTools? _pickerPhotoTools;

  PickerPhotoTools._();

  static PickerPhotoTools getInstance() {
    _imageFileList = null;
    _picker = ImagePicker();
    _pickerPhotoTools ??= PickerPhotoTools._();
    return _pickerPhotoTools!;
  }

  XFile? get imageFileList => _imageFileList; // function

  void setImageFileListFromFile(XFile? value) {
    _imageFileList = value == null ? null : value;
  }

  Future<XFile?> getImageFromSource({
    required ImageSource source,
  }) async {
    XFile? pickedFile = await _picker.pickImage(
      source: source,
    );
    if (pickedFile != null) {
      if (defaultTargetPlatform == TargetPlatform.android) {
        var response_lostData = await retrieveLostData();
        pickedFile =
            (response_lostData == null) ? pickedFile : response_lostData;
      }
      return pickedFile;
    }
    return null;
  }

  Future<XFile?> retrieveLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return null;
    } else {
      return response.file;
    }
  }
}
