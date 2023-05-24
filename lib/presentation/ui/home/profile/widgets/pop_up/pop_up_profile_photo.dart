import 'package:aero_delivery/presentation/states/cubits/picker_image_cubit.dart';
import 'package:aero_delivery/presentation/states/picker_image_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class PopUpProfilePhoto extends StatelessWidget {
  PopUpProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickerImageCubit, PickerImageState>(
      builder: (contextPickerImage, state) {
        return Container(
          height: 130,
          child: Column(
            children: [
              // pick with camera
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Camera'),
                onTap: () => _pickImage(contextPickerImage, ImageSource.camera),
              ),
              // pick with gallery
              ListTile(
                  leading: (state is PickerImageStateLoading)
                      ? const CircularProgressIndicator()
                      : const Icon(Icons.photo),
                  title: const Text('Gallery'),
                  onTap: () =>
                      _pickImage(contextPickerImage, ImageSource.gallery)),
            ],
          ),
        );
      },
    );
  }

  void _pickImage(BuildContext context, ImageSource source) async {
    await context.read<PickerImageCubit>().pickImage(
          source: source,
        );
    await context.read<PickerImageCubit>().uploadPicture();
    Navigator.pop(context, "updated");
  }
}
