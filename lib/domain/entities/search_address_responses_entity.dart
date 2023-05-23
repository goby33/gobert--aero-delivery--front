import 'package:aero_delivery/domain/entities/location_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_address_responses_entity.freezed.dart';

@freezed
class SearchAddressResponsesEntity with _$SearchAddressResponsesEntity {
  const factory SearchAddressResponsesEntity({
    required String? name,
    required String? icon,
    required String? iconBackground,
    required LocationEntity? location,
  }) = _SearchAddressResponsesEntity;
}
