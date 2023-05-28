import 'package:aero_delivery/presentation/states/cubits/settings_profile_cubit.dart';
import 'package:aero_delivery/presentation/states/settings_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailPopUp extends StatefulWidget {
  EmailPopUp({Key? key}) : super(key: key);

  @override
  State<EmailPopUp> createState() => _EmailPopUpState();
}

class _EmailPopUpState extends State<EmailPopUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // initState
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsProfileCubit, SettingsProfileState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(10),
          height: 270,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Email Change : ",
                style: Theme.of(context).textTheme.headline5,
              ),
              //TextFormField Email
              SizedBox(
                height: 40,
                child: TextField(
                  enabled: state is! SettingsProfileStateLoading,
                  controller: emailController,
                  decoration: InputDecoration(
                    errorText: state.error,
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: const OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              //TextFormField Password
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
                onPressed: () =>
                    context.read<SettingsProfileCubit>().updateEmail(
                          email: emailController.text,
                          password: passwordController.text,
                        ),
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
  }
}
