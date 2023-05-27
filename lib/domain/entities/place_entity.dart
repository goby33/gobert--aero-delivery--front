import 'package:aero_delivery/domain/entities/location_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_entity.freezed.dart';

@freezed
class PlaceEntity with _$PlaceEntity {
  const factory PlaceEntity({
    required String? name,
    required String? icon,
    required String? iconBackground,
    required LocationEntity? location,
  }) = _PlaceEntity;
}
