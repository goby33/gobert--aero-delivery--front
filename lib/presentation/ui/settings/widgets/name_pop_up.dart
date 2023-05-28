import 'package:aero_delivery/presentation/states/cubits/settings_profile_cubit.dart';
import 'package:aero_delivery/presentation/states/settings_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NamePopUp extends StatefulWidget {
  NamePopUp({Key? key}) : super(key: key);

  @override
  State<NamePopUp> createState() => _NamePopUpState();
}

class _NamePopUpState extends State<NamePopUp> {
  final nameController = TextEditingController();
  // initState
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
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
                "Name Change : ",
                style: Theme.of(context).textTheme.headline5,
              ),
              //TextFormField
              SizedBox(
                height: 40,
                child: TextField(
                  enabled: state is! SettingsProfileStateLoading,
                  controller: nameController,
                  decoration: InputDecoration(
                    errorText: state.error,
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: const OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () => context
                    .read<SettingsProfileCubit>()
                    .updateName(nameController.text),
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
