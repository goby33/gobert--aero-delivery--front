import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonSearchTrip extends StatelessWidget {
  final Function() onPressed;
  const ButtonSearchTrip({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)), // set rounded corner radius
                )
            )
        ),
        onPressed: () => onPressed(),
        child: Text("Search"),
      ),
    );
    ;
  }
}
