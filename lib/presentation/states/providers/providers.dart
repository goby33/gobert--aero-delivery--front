import 'package:aero_delivery/data/repositories/auth_firebase_repository_impl.dart';
import 'package:aero_delivery/data/repositories/google_place_repository_impl.dart';
import 'package:aero_delivery/data/repositories/picker_photo_repository_impl.dart';
import 'package:aero_delivery/data/repositories/picture_cloud_storage_repository_impl.dart';
import 'package:aero_delivery/data/repositories/trip_cloud_firestore_repository_impl.dart';
import 'package:aero_delivery/data/repositories/user_cloud_firestore_repoository_impl.dart';
import 'package:aero_delivery/data/sources/auth_firebase_api.dart';
import 'package:aero_delivery/data/sources/google_place_api.dart';
import 'package:aero_delivery/data/sources/picture_cloud_storage_api.dart';
import 'package:aero_delivery/data/sources/trip_cloud_firestore_api.dart';
import 'package:aero_delivery/data/sources/user_cloud_firestore_api.dart';
import 'package:aero_delivery/domain/repositories/auth_firebase_repository.dart';
import 'package:aero_delivery/domain/repositories/google_place_repository.dart';
import 'package:aero_delivery/domain/repositories/picker_photo_repository.dart';
import 'package:aero_delivery/domain/repositories/picture_cloud_storage_repository.dart';
import 'package:aero_delivery/domain/repositories/trip_cloud_firestore_repository.dart';
import 'package:aero_delivery/domain/repositories/user_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/cubits/add_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/cubits/search_trip_cubit.dart';
import 'package:aero_delivery/presentation/states/cubits/sign_in_cubit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final repositories = [
  RepositoryProvider<Dio>(
    create: (_) => Dio(),
  ),
  // AUTH REPOSITORY
  RepositoryProvider<FirebaseAuth>(
    create: (_) => FirebaseAuth.instance,
  ),
  RepositoryProvider<FirebaseStorage>(
    create: (_) => FirebaseStorage.instance,
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
  RepositoryProvider<TripCloudFirestoreApi>(
    create: (context) => TripCloudFirestoreApi(),
  ),
  RepositoryProvider<UserCloudFirestoreApi>(
    create: (context) => UserCloudFirestoreApi(),
  ),
  RepositoryProvider<GooglePlaceApi>(
    create: (context) => GooglePlaceApi(
      context.read(),
    ),
  ),
  RepositoryProvider<PictureCloudStorageApi>(
    create: (context) => PictureCloudStorageApi(
      context.read(),
    ),
  ),

  // REPOSITORY
  RepositoryProvider<AuthFirebaseRepository>(
    create: (context) => AuthFirebaseRepositoryImpl(
      context.read(),
    ),
  ),
  RepositoryProvider<UserCloudFirestoreRepository>(
    create: (context) => UserCloudFirestoreRepositoryImpl(
      context.read(),
    ),
  ),
  RepositoryProvider<TripCloudFirestoreRepository>(
    create: (context) => TripCloudFirestoreRepositoryImpl(
      context.read(),
    ),
  ),
  RepositoryProvider<GooglePlaceRepository>(
    create: (context) => GooglePlaceRepositoryImpl(
      context.read(),
    ),
  ),
  RepositoryProvider<PickerPhotoRepository>(
    create: (context) => PickerPhotoRepositoryImpl(),
  ),
  RepositoryProvider<PictureCloudStorageRepository>(
    create: (context) => PictureCloudStorageRepositoryImpl(
      context.read(),
    ),
  ),

];

final blocs = <BlocProvider>[
  BlocProvider<AddTripCubit>(
    create: (context) => AddTripCubit(
      googlePlaceRepository: context.read(),
      tripCloudFirestoreRepository: context.read(),
    ),
  ),
  BlocProvider<SearchTripCubit>(
    create: (context) => SearchTripCubit(
      tripCloudFirestoreRepository: context.read(),
    ),
  ),
];

