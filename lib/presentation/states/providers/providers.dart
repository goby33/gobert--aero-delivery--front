import 'package:aero_delivery/data/repositories/auth_repository_impl.dart';
import 'package:aero_delivery/data/repositories/cloud_firestore_repository_impl.dart';
import 'package:aero_delivery/data/repositories/google_place_repository_impl.dart';
import 'package:aero_delivery/data/sources/auth_firebase_api.dart';
import 'package:aero_delivery/data/sources/cloud_firestore_api.dart';
import 'package:aero_delivery/data/sources/google_place_api.dart';
import 'package:aero_delivery/domain/repositories/auth_repository.dart';
import 'package:aero_delivery/domain/repositories/cloud_firestore_repository.dart';
import 'package:aero_delivery/domain/repositories/google_place_repository.dart';
import 'package:aero_delivery/presentation/states/cubits/pop_up_add_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/cubits/sign_in_cubit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  RepositoryProvider<FirebaseFirestore>(
    create: (_) => FirebaseFirestore.instance,
  ),

//API
  RepositoryProvider<AuthFirebaseApi>(
    create: (context) => AuthFirebaseApi(
      context.read(),
    ),
  ),
  RepositoryProvider<CloudFirestoreApi>(
    create: (context) => CloudFirestoreApi(
      context.read(),
    ),
  ),
  RepositoryProvider<GooglePlaceApi>(
    create: (context) => GooglePlaceApi(
      context.read(),
    ),
  ),

  // REPOSITORY
  RepositoryProvider<AuthRepository>(
    create: (context) => AuthRepositoryImpl(
      context.read(),
    ),
  ),
  RepositoryProvider<CloudFirestoreRepository>(
    create: (context) => CloudFirestoreRepositoryImpl(
      context.read(),
    ),
  ),
  RepositoryProvider<GooglePlaceRepository>(
    create: (context) => GooglePlaceRepositoryImpl(
      context.read(),
    ),
  ),
];

final blocs = <BlocProvider>[
  BlocProvider<SignInCubit>(
    create: (context) => SignInCubit(
      authRepository: context.read(),
    ),
  ),
  BlocProvider<PopUpAddTripCubit>(
    create: (context) => PopUpAddTripCubit(
      googlePlaceRepository: context.read(),
      cloudFirestoreRepository: context.read(),
    ),
  ),
];
