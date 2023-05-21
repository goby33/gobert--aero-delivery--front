import 'package:aero_delivery/presentation/states/cubits/sign_in_cubit.dart';
import 'package:aero_delivery/presentation/states/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //sign in
    return BlocConsumer<SignInCubit, SignInState>(
        listener: (context, state) => state.maybeMap(
            signIn: (value) => context.push('/home'),
            success: (value) => context.push('/home'),
            orElse: () => null),
        builder: (context, state) {
          return Container(
            height: 400,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Log in : ",
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
                if (state is SignInStateFailed)
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
                  onPressed: () => context.read<SignInCubit>().signIn(
                      emailValue: emailController.text,
                      passwordValue: passwordController.text),
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Row(
                        children: [
                          const Spacer(),
                          const Text(
                            "login",
                          ),
                          const Spacer(),
                          if (state is SignInStateLoading)
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
    );
  }
}
