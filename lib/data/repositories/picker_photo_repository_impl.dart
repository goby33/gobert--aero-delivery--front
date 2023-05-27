import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/config/picker_photo_tools.dart';
import 'package:aero_delivery/domain/repositories/picker_photo_repository.dart';
import 'package:image_picker/image_picker.dart';

class PickerPhotoRepositoryImpl with PickerPhotoRepository {
  final PickerPhotoTools _pickerPhotoTools = PickerPhotoTools.getInstance();
  static XFile? _imageFileList;

  PickerPhotoRepositoryImpl();

  @override
  Future<ApiResponse<String>> getImage({
    required ImageSource source,
  }) async {
    try {
      XFile? responsefile =
          await _pickerPhotoTools.getImageFromSource(source: source);
      if (responsefile != null) {
        _imageFileList = responsefile;
        return SuccessResponse(1.toString(), responsefile.path);
      } else {
        return FailResponse(0.toString(), failure: "response null");
      }
    } catch (e) {
      return FailResponse(0.toString(), failure: e.toString());
    }
  }
}
