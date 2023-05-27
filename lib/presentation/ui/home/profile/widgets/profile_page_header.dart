import 'package:flutter/material.dart';

import 'circle_photo_profile.dart';
import 'container_info_user.dart';

class ProfilePageHeader extends StatelessWidget {
  final String? name;
  final String? uid;
  final String photoUrl;
  const ProfilePageHeader({
    Key? key,
    required this.uid,
    required this.name,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Color(0xFFF618985),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
          ),
          Positioned(
            top: 100,
            child: ContainerInfoUser(
              name: name ?? '',
              uid: uid ?? '',
            ),
          ),
          Positioned(
            top: 20,
            child: CirclePhoto(urlPhoto: photoUrl),
          ),
        ],
      ),
    );
  }
}
