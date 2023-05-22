# aero_delivery

aero delivery app

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



Colors : 

font : EDF4ED


MODEL :
===== 1 =====
TRIP MODEL :
    String uid_user;
    String airportFrom;
    Location airportFromLocation;
    String airportTo;
    Location airportToLocation;
    Timestamp dateOfDeparture;
    Timestamp dateOfArrival;
    String freeWeight;

ENTITIES :
===== 1 =====
TRIP ENTITY :
    String uid_user;
    String airportFrom;
    Location airportFromLocation;
    String airportTo;
    Location airportToLocation;
    DateTime dateOfDeparture;
    DateTime dateOfArrival;
    String freeWeight;
    

// je recherche un voyage 
SearchEntity :
    String airportFrom;
    String airportTo;
    DateTime dateOfDeparture;
    DateTime dateOfArrival;

===== 2 =====
ResultSearchEntity : 
    String trip_id;
    TripEntity trip_entity
