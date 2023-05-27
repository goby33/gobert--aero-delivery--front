import 'package:aero_delivery/presentation/states/cubits/picker_image_cubit.dart';
import 'package:aero_delivery/presentation/states/picker_image_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class WelcomeListeners extends StatelessWidget {
  final Widget child;
  const WelcomeListeners({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<PickerImageCubit, PickerImageState>(
      listener: (context, state) => state.maybeMap(
        uploaded: (value) => context.push('/home'),
        failed: (value) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            action: SnackBarAction(
              label: 'close',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
            content: Text(value.message),
          ),
        ),
        orElse: () => null,
      ),
      child: child,
    );
  }
}
