import 'package:aero_delivery/presentation/states/cubits/settings_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignOutPopUp extends StatelessWidget {
  SignOutPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Are you sure you want to sign out ?",
            style: Theme.of(context).textTheme.headline5,
          ),
          // no and yes buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () => Navigator.pop(context),
                child: SizedBox(
                  width: 100,
                  child: Center(
                    child: Text("No"),
                  ),
                ),
              ),
              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () => context.read<SettingsProfileCubit>().signOut(),
                child: SizedBox(
                  width: 100,
                  child: Center(
                    child: Text("Yes"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
