import 'package:aero_delivery/presentation/states/create_user_state.dart';
import 'package:aero_delivery/presentation/states/cubits/create_user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({Key? key}) : super(key: key);

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateUserCubit(
        authRepository: context.read(),
      ),
      child: BlocConsumer<CreateUserCubit, CreateUserState>(
        listener: (context, state) => state.maybeMap(
          success: (value) => context.push('/home'),
          register: (value) => context.push('/home'),
          orElse: () => null,
        ),
        builder: (context, state) {
          return Container(
            height: 400,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Register : ",
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 40,
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: TextField(
                    obscureText: true,
                    controller: passwordConfirmController,
                    decoration: const InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Confirm password',
                    ),
                  ),
                ),
                if (state is CreateUserStateFailed)
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      state.message,
                      style: const TextStyle(
                        color: Color(0xFFF79F79),
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
                  onPressed: () => context.read<CreateUserCubit>().createUser(
                        emailValue: emailController.text,
                        passwordValue: passwordController.text,
                        passwordConfirmationValue:
                            passwordConfirmController.text,
                      ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Row(
                        children: [
                          const Spacer(),
                          const Text(
                            "Register",
                          ),
                          const Spacer(),
                          if (state is CreateUserStateLoading)
                            const SizedBox(
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
      ),
    );
  }
}
// email mot de passe

// facebook
// google
// apple
