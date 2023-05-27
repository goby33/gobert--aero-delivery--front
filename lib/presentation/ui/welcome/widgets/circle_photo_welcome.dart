import 'dart:io';

import 'package:aero_delivery/presentation/states/cubits/picker_image_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CirclePhotoWelcome extends StatelessWidget {
  final String urlPhoto;
  final bool loading;
  const CirclePhotoWelcome(
      {Key? key, required this.urlPhoto, required this.loading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (urlPhoto == '') {
      return Image.asset(
        'assets/images/aero-delivery-high.png',
        width: 250,
      );
    } else {
      return SizedBox(
        child: CircleAvatar(
          radius: 90.0,
          backgroundColor: const Color.fromRGBO(255, 221, 210, 1),
          child: CircleAvatar(
            radius: 87.0,
            backgroundImage: Image.file(
              File(urlPhoto),
            ).image,
            child: Align(
              alignment: Alignment.bottomRight,
              child: (loading)
                  ? const CircularProgressIndicator()
                  : InkWell(
                      onTap: () => context.read<PickerImageCubit>().reset(),
                      child: const CircleAvatar(
                        backgroundColor: Color.fromRGBO(255, 221, 210, 1),
                        radius: 15.0,
                        child: Icon(
                          Icons.close,
                          size: 20.0,
                          color: Color(0xFF404040),
                        ),
                      ),
                    ),
            ),
          ),
        ),
      );
    }
  }
}
