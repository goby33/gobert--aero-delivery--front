//TripViewState

import 'package:aero_delivery/config/api_response.dart';
import 'package:aero_delivery/domain/repositories/trip_cloud_firestore_repository.dart';
import 'package:aero_delivery/presentation/states/trip_view_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TripViewCubit extends Cubit<TripViewState> {
  final TripCloudFirestoreRepository tripCloudFirestoreRepository;

  TripViewCubit({
    required this.tripCloudFirestoreRepository,
  }) : super(TripViewStateNoTrip());

  Future<void> getTrip({
    required String idTrip,
  }) async {
    emit(TripViewState.loading());
    final result = await tripCloudFirestoreRepository.getTrip(idTrip: idTrip);
    if (result is SuccessResponse && result.data != null) {
      emit(TripViewState.success(resultSearchTripEntity: result.data!));
    } else {
      emit(TripViewState.failed(
        dateTime: DateTime.now(),
        message: 'No trip found',
      ));
    }
  }
}
