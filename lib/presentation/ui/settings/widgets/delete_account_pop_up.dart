import 'package:aero_delivery/presentation/states/cubits/settings_profile_cubit.dart';
import 'package:aero_delivery/presentation/states/settings_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteAccountPopUp extends StatefulWidget {
  DeleteAccountPopUp({Key? key}) : super(key: key);

  @override
  State<DeleteAccountPopUp> createState() => _DeleteAccountPopUpState();
}

class _DeleteAccountPopUpState extends State<DeleteAccountPopUp> {
  final passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsProfileCubit, SettingsProfileState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(10),
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Are you sure you want to leave?",
                style: Theme.of(context).textTheme.headline5,
              ),
              // no and yes buttons
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 40,
                    child: TextField(
                      enabled: !(state is SettingsProfileStateLoading),
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        errorText: state.error,
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Your Password',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: Theme.of(context).elevatedButtonTheme.style,
                    onPressed: () async => await context
                        .read<SettingsProfileCubit>()
                        .deleteAccount(password: passwordController.text),
                    child: SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Center(
                              child: Text("Yes"),
                            ),
                            if (state is SettingsProfileStateLoading)
                              CircularProgressIndicator(
                                strokeWidth: 2,
                              )
                          ],
                        )),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
