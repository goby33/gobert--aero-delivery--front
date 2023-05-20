import 'package:aero_delivery/data/repositories/auth_repository_impl.dart';
import 'package:aero_delivery/data/repositories/google_place_repository_impl.dart';
import 'package:aero_delivery/data/sources/auth_firebase_impl.dart';
import 'package:aero_delivery/data/sources/google_place_api.dart';
import 'package:aero_delivery/domain/repositories/auth_repository.dart';
import 'package:aero_delivery/domain/repositories/google_place_repository.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final repositories = [
  RepositoryProvider<Dio>(
    create: (_) => Dio(),
  ),
  // AUTH REPOSITORY
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

  // GOOGLE PLACE API
  RepositoryProvider<GooglePlaceApi>(
      create: (context) => GooglePlaceApi(
            context.read(),
          )),

  RepositoryProvider<GooglePlaceRepository>(
      create: (context) => GooglePlaceRepositoryImpl(
            context.read(),
          )),
];

final blocs = <BlocProvider>[];
