import 'package:aero_delivery/presentation/states/cubits/picker_image_cubit.dart';
import 'package:aero_delivery/presentation/states/picker_image_state.dart';
import 'package:aero_delivery/presentation/ui/welcome/welcome_listeners.dart';
import 'package:aero_delivery/presentation/ui/welcome/welcome_provider.dart';
import 'package:aero_delivery/presentation/ui/welcome/widgets/circle_photo_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class WelcomePage extends StatefulWidget {
  final String name;
  const WelcomePage({Key? key, required this.name}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return WelcomeProvider(
      child: WelcomeListeners(
        child: BlocBuilder<PickerImageCubit, PickerImageState>(builder: (
          context,
          state,
        ) {
          return Scaffold(
            backgroundColor: const Color(0xFFF79F79),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo or image
                CirclePhotoWelcome(
                  urlPhoto: state.path,
                  loading: (state is PickerImageStateLoading),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome ${widget.name}',
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Please choose your profile picture',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(255, 221, 210, 1),
                      ),
                      onPressed: () async => context
                          .read<PickerImageCubit>()
                          .pickImage(source: ImageSource.camera),
                      icon: const Icon(
                        Icons.add_a_photo,
                        size: 24.0,
                      ),
                      label: const Text('Take a picture',
                          style: TextStyle(
                              color: Color.fromRGBO(226, 149, 120, 1))),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(255, 221, 210, 1),
                      ),
                      onPressed: () async => context
                          .read<PickerImageCubit>()
                          .pickImage(source: ImageSource.gallery),
                      icon: const Icon(
                        Icons.collections,
                        size: 24.0,
                      ),
                      label: const Text('From gallery',
                          style: TextStyle(
                              color: Color.fromRGBO(226, 149, 120, 1))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () => context.push('/home'),
                      icon: const Icon(
                        Icons.no_photography,
                        size: 24.0,
                      ),
                      label: const Text(
                        'take a picture later',
                      ),
                    ),
                    if (state.path != '')
                      ElevatedButton.icon(
                        onPressed: () =>
                            context.read<PickerImageCubit>().uploadPicture(),
                        icon: const Icon(
                          Icons.collections,
                          size: 24.0,
                        ),
                        label: Text('Save my photo'),
                      ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
