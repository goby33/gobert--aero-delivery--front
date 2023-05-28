import 'package:aero_delivery/presentation/states/cubits/profile_cubit.dart';
import 'package:aero_delivery/presentation/ui/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContainerInfoUser extends StatelessWidget {
  final String name;
  final String uid;

  const ContainerInfoUser({
    Key? key,
    required this.name,
    required this.uid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProfileCubit>();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(color: const Color(0xFFF79F79), borderRadius: BorderRadius.circular(30)),
      height: 230,
      width: 270,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 5),
            child: RichText(
              text: TextSpan(
                text: "Hello ",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: name,
                    style: const TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Uid n° : ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  )),
              Flexible(
                child: Text(uid, style: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()))
                .then((value) async => await context.read<ProfileCubit>().getProfile()),
            icon: const Icon(
              Icons.settings,
              size: 24.0,
            ),
            label: const Text('Settings'),
          ),
        ],
      ),
    );
  }
}
