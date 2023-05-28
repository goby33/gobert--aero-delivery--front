import 'package:aero_delivery/presentation/states/cubits/settings_profile_cubit.dart';
import 'package:aero_delivery/presentation/states/settings_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordPopUp extends StatefulWidget {
  PasswordPopUp({Key? key}) : super(key: key);

  @override
  _PasswordPopUpState createState() {
    return _PasswordPopUpState();
  }
}

class _PasswordPopUpState extends State<PasswordPopUp> {
  final passwordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final newPasswordConfirmController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    newPasswordController.dispose();
    newPasswordConfirmController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsProfileCubit, SettingsProfileState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(10),
          height: 330,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Password Change : ",
                style: Theme.of(context).textTheme.headline5,
              ),
              //TextFormField Email
              SizedBox(
                height: 40,
                child: TextField(
                  enabled: !(state is SettingsProfileStateLoading),
                  controller: passwordController,
                  decoration: InputDecoration(
                    errorText: state.error,
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Actual Password',
                  ),
                ),
              ),
              //TextFormField Password
              SizedBox(
                height: 40,
                child: TextField(
                  enabled: !(state is SettingsProfileStateLoading),
                  controller: newPasswordController,
                  decoration: InputDecoration(
                    errorText: state.error,
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'New Password',
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                child: TextField(
                  enabled: !(state is SettingsProfileStateLoading),
                  controller: newPasswordConfirmController,
                  decoration: InputDecoration(
                    errorText: state.error,
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Confirm your new Password',
                  ),
                ),
              ),
              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () => context
                    .read<SettingsProfileCubit>()
                    .updatePassword(
                        password: passwordController.text,
                        newPassword: newPasswordController.text,
                        newConfirmPassword: newPasswordConfirmController.text),
                child: SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Row(
                      children: [
                        Spacer(),
                        Text(
                          "Update",
                        ),
                        Spacer(),
                        if (state is SettingsProfileStateLoading)
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
    ;
  }
}
