import 'package:aero_delivery/data/repositories/auth_repository_impl.dart';
import 'package:aero_delivery/domain/repositories/auth_repository.dart';
import 'package:aero_delivery/presentation/states/cubits/sign_in_cubit.dart';
import 'package:aero_delivery/presentation/states/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return RepositoryProvider<AuthRepository>(
      create: (context) => AuthRepositoryImpl(),
      child: BlocProvider(
        create: (context) => SignInCubit(
          authRepository: context.read(),
        ),
        child: BlocConsumer<SignInCubit, SignInState>(
          listener: (context, state) {
            // TODO: implement listener
          },
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
                    onPressed: () => context.read<SignInCubit>().test(),
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Row(
                          children: const [
                            Spacer(),
                            Text(
                              "login",
                            ),
                            Spacer(),
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
      ),
    );
  }
}
