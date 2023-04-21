import 'package:aero_delivery/data/repositories/post_repository_impl.dart';
import 'package:aero_delivery/domain/repositories/post_repository.dart';
import 'package:aero_delivery/presentation/states/cubits/pop_up_add_trip_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final repositories = [
  RepositoryProvider<PostRepository>(
    create: (context) => PostRepositoryImpl(),
  ),
];

final blocs = <BlocProvider>[
  BlocProvider<PopUpAddTripCubit>(create: (_) => PopUpAddTripCubit()),
];
