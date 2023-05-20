// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_address_responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchAddressResponses {
  String? get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get iconBackground => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchAddressResponsesCopyWith<SearchAddressResponses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAddressResponsesCopyWith<$Res> {
  factory $SearchAddressResponsesCopyWith(SearchAddressResponses value,
          $Res Function(SearchAddressResponses) then) =
      _$SearchAddressResponsesCopyWithImpl<$Res, SearchAddressResponses>;
  @useResult
  $Res call({String? name, String? icon, String? iconBackground});
}

/// @nodoc
class _$SearchAddressResponsesCopyWithImpl<$Res,
        $Val extends SearchAddressResponses>
    implements $SearchAddressResponsesCopyWith<$Res> {
  _$SearchAddressResponsesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? iconBackground = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconBackground: freezed == iconBackground
          ? _value.iconBackground
          : iconBackground // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchAddressResponsesCopyWith<$Res>
    implements $SearchAddressResponsesCopyWith<$Res> {
  factory _$$_SearchAddressResponsesCopyWith(_$_SearchAddressResponses value,
          $Res Function(_$_SearchAddressResponses) then) =
      __$$_SearchAddressResponsesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? icon, String? iconBackground});
}

/// @nodoc
class __$$_SearchAddressResponsesCopyWithImpl<$Res>
    extends _$SearchAddressResponsesCopyWithImpl<$Res,
        _$_SearchAddressResponses>
    implements _$$_SearchAddressResponsesCopyWith<$Res> {
  __$$_SearchAddressResponsesCopyWithImpl(_$_SearchAddressResponses _value,
      $Res Function(_$_SearchAddressResponses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? iconBackground = freezed,
  }) {
    return _then(_$_SearchAddressResponses(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconBackground: freezed == iconBackground
          ? _value.iconBackground
          : iconBackground // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchAddressResponses implements _SearchAddressResponses {
  const _$_SearchAddressResponses(
      {required this.name, required this.icon, required this.iconBackground});

  @override
  final String? name;
  @override
  final String? icon;
  @override
  final String? iconBackground;

  @override
  String toString() {
    return 'SearchAddressResponses(name: $name, icon: $icon, iconBackground: $iconBackground)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAddressResponses &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconBackground, iconBackground) ||
                other.iconBackground == iconBackground));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, icon, iconBackground);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAddressResponsesCopyWith<_$_SearchAddressResponses> get copyWith =>
      __$$_SearchAddressResponsesCopyWithImpl<_$_SearchAddressResponses>(
          this, _$identity);
}

abstract class _SearchAddressResponses implements SearchAddressResponses {
  const factory _SearchAddressResponses(
      {required final String? name,
      required final String? icon,
      required final String? iconBackground}) = _$_SearchAddressResponses;

  @override
  String? get name;
  @override
  String? get icon;
  @override
  String? get iconBackground;
  @override
  @JsonKey(ignore: true)
  _$$_SearchAddressResponsesCopyWith<_$_SearchAddressResponses> get copyWith =>
      throw _privateConstructorUsedError;
}
