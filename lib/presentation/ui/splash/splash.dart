import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: // background image
          Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background-original.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          // button to start the game
          Align(
            alignment: const AlignmentDirectional(0, 0.8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF618985),
                textStyle: const TextStyle(
                  color: Color(0xFFEDF4ED),
                  fontSize: 20,
                  fontFamily: 'Nunito',
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () => {},
              child: const SizedBox(
                width: 350.0,
                height: 42.0,
                child: Center(
                  child: Text(
                    "Start send a package ?",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
