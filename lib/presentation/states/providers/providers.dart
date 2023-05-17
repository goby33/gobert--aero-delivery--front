import 'package:aero_delivery/data/repositories/auth_repository_impl.dart';
import 'package:aero_delivery/data/repositories/cirium_repository_impl.dart';
import 'package:aero_delivery/data/sources/auth_firebase_impl.dart';
import 'package:aero_delivery/data/sources/cirium_api.dart';
import 'package:aero_delivery/domain/repositories/auth_repository.dart';
import 'package:aero_delivery/domain/repositories/cirium_repository.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final repositories = [
  RepositoryProvider<Dio>(
    create: (_) => Dio(),
  ),
  RepositoryProvider<FirebaseAuth>(
    create: (_) => FirebaseAuth.instance,
  ),
  RepositoryProvider<AuthFirebaseImpl>(
    create: (context) => AuthFirebaseImpl(
      context.read(),
    ),
  ),
  RepositoryProvider<AuthRepository>(
    create: (context) => AuthRepositoryImpl(
      context.read(),
    ),
  ),
  RepositoryProvider<CiriumApi>(
    create: (context) => CiriumApi(
      context.read(),
    ),
  ),
  RepositoryProvider<CiriumRepository>(
    create: (context) => CiriumRepositoryImpl(
      context.read(),
    ),
  ),
];

final blocs = <BlocProvider>[];


