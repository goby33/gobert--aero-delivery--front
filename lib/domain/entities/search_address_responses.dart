import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_address_responses.freezed.dart';

@freezed
class SearchAddressResponses with _$SearchAddressResponses {
  const factory SearchAddressResponses({
    required String? name,
    required String? icon,
    required String? iconBackground,
  }) = _SearchAddressResponses;
}
