# aero_delivery

aero delivery app


## Purpose

Try to make clean code as much as possible in Flutter using:

* [cupertino_icons](https://pub.dev/packages/cupertino_icons): ^1.0.2
* [go_router](https://pub.dev/packages/go_router): ^7.0.1
* [freezed](https://pub.dev/packages/freezed): ^2.3.2
* [bloc](https://pub.dev/packages/bloc): ^8.1.1
* [freezed_annotation](https://pub.dev/packages/freezed_annotation): ^2.2.0
* [flutter_bloc](https://pub.dev/packages/flutter_bloc): ^8.1.2
* [firebase_core](https://pub.dev/packages/firebase_core): ^2.13.0
* [firebase_auth](https://pub.dev/packages/firebase_auth): ^4.6.1
* [firebase_storage](https://pub.dev/packages/firebase_storage): ^11.2.1
* [cloud_firestore](https://pub.dev/packages/cloud_firestore): ^4.7.1
* [firebase_core_platform_interface](https://pub.dev/packages/firebase_core_platform_interface): ^4.8.0
* [retrofit](https://pub.dev/packages/retrofit): ^4.0.1
* [retrofit_generator](https://pub.dev/packages/retrofit_generator): ^7.0.0
* [dio](https://pub.dev/packages/dio): ^5.1.2
* [table_calendar](https://pub.dev/packages/table_calendar): ^3.0.9
* [json_annotation](https://pub.dev/packages/json_annotation): ^4.8.1
* [image_picker](https://pub.dev/packages/image_picker): ^0.8.7+5
* [timeline_tile](https://pub.dev/packages/timeline_tile): ^2.0.0


## Architecture pattern

The code was organized with Clean Architecture pattern inspiration.

* [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)


# Commandes de base pour lancer un projet Flutter

Pou exécuter un projet Flutter :

1. **Installation de Flutter :**
    - Téléchargez et installez le SDK Flutter à partir du site officiel : [flutter.dev](https://flutter.dev)
    - Assurez-vous d'ajouter le chemin d'installation de Flutter à votre variable d'environnement PATH.

        ```
      flutter doctor
      ```
    
2. **Accéder au répertoire du projet :**
    - Utilisez la commande `cd` pour accéder au répertoire de votre projet :
      ```
      cd nom_du_projet
      ```

4. **Exécution de l'application :**
    - Connectez un émulateur ou un appareil physique à votre machine.
    - Exécutez la commande suivante pour lancer l'application Flutter :
      ```
      flutter pub get
      flutter run
      ```

    - Flutter détectera automatiquement votre appareil connecté et installera l'application sur celui-ci. Vous pourrez alors voir l'application s'exécuter sur l'émulateur ou l'appareil.
