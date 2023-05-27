import 'package:aero_delivery/config/api_response.dart';
import 'package:image_picker/image_picker.dart';

mixin PickerPhotoRepository {
  Future<ApiResponse<String>> getImage({
    required ImageSource source,
  });
}
