import 'package:aero_delivery/presentation/ui/login/widgets/register.dart';
import 'package:aero_delivery/presentation/ui/login/widgets/sign-in.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
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
                  onPressed: () => _showPopUp(
                      buildContext: context, child: const Register()),
                  child: const SizedBox(
                    width: 100.0,
                    height: 42.0,
                    child: Center(
                      child: Text(
                        "register",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
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
                  onPressed: () =>
                      _showPopUp(buildContext: context, child: const SignIn()),
                  child: const SizedBox(
                    width: 100.0,
                    height: 42.0,
                    child: Center(
                      child: Text(
                        "Log in",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// method login in the bloc
void _showPopUp({
  required BuildContext buildContext,
  required Widget child,
}) {
  showModalBottomSheet(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    context: buildContext,
    builder: (_) {
      return child;
    },
  );
}
