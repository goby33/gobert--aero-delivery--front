import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String? path;

  Avatar({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (path != null && path != '') {
      return CircleAvatar(
          backgroundImage: Image.network(
        errorBuilder:
            (BuildContext context, Object exception, StackTrace? stackTrace) {
          return const Text('ð¢');
        },
        path!,
      ).image);
    } else {
      return CircleAvatar(
        backgroundImage: Image.asset(
          'assets/images/trivial-pursuit-logo.png',
          width: 200,
        ).image,
      );
    }
  }
}
