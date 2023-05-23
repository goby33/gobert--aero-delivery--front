// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_address_responses_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchAddressResponsesEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get iconBackground => throw _privateConstructorUsedError;
  LocationEntity? get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchAddressResponsesEntityCopyWith<SearchAddressResponsesEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAddressResponsesEntityCopyWith<$Res> {
  factory $SearchAddressResponsesEntityCopyWith(
          SearchAddressResponsesEntity value,
          $Res Function(SearchAddressResponsesEntity) then) =
      _$SearchAddressResponsesEntityCopyWithImpl<$Res,
          SearchAddressResponsesEntity>;
  @useResult
  $Res call(
      {String? name,
      String? icon,
      String? iconBackground,
      LocationEntity? location});

  $LocationEntityCopyWith<$Res>? get location;
}

/// @nodoc
class _$SearchAddressResponsesEntityCopyWithImpl<$Res,
        $Val extends SearchAddressResponsesEntity>
    implements $SearchAddressResponsesEntityCopyWith<$Res> {
  _$SearchAddressResponsesEntityCopyWithImpl(this._value, this._then);

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
    Object? location = freezed,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationEntityCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchAddressResponsesEntityCopyWith<$Res>
    implements $SearchAddressResponsesEntityCopyWith<$Res> {
  factory _$$_SearchAddressResponsesEntityCopyWith(
          _$_SearchAddressResponsesEntity value,
          $Res Function(_$_SearchAddressResponsesEntity) then) =
      __$$_SearchAddressResponsesEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? icon,
      String? iconBackground,
      LocationEntity? location});

  @override
  $LocationEntityCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_SearchAddressResponsesEntityCopyWithImpl<$Res>
    extends _$SearchAddressResponsesEntityCopyWithImpl<$Res,
        _$_SearchAddressResponsesEntity>
    implements _$$_SearchAddressResponsesEntityCopyWith<$Res> {
  __$$_SearchAddressResponsesEntityCopyWithImpl(
      _$_SearchAddressResponsesEntity _value,
      $Res Function(_$_SearchAddressResponsesEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? iconBackground = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_SearchAddressResponsesEntity(
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
    ));
  }
}

/// @nodoc

class _$_SearchAddressResponsesEntity implements _SearchAddressResponsesEntity {
  const _$_SearchAddressResponsesEntity(
      {required this.name,
      required this.icon,
      required this.iconBackground,
      required this.location});

  @override
  final String? name;
  @override
  final String? icon;
  @override
  final String? iconBackground;
  @override
  final LocationEntity? location;

  @override
  String toString() {
    return 'SearchAddressResponsesEntity(name: $name, icon: $icon, iconBackground: $iconBackground, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAddressResponsesEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconBackground, iconBackground) ||
                other.iconBackground == iconBackground) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, icon, iconBackground, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAddressResponsesEntityCopyWith<_$_SearchAddressResponsesEntity>
      get copyWith => __$$_SearchAddressResponsesEntityCopyWithImpl<
          _$_SearchAddressResponsesEntity>(this, _$identity);
}

abstract class _SearchAddressResponsesEntity
    implements SearchAddressResponsesEntity {
  const factory _SearchAddressResponsesEntity(
          {required final String? name,
          required final String? icon,
          required final String? iconBackground,
          required final LocationEntity? location}) =
      _$_SearchAddressResponsesEntity;

  @override
  String? get name;
  @override
  String? get icon;
  @override
  String? get iconBackground;
  @override
  LocationEntity? get location;
  @override
  @JsonKey(ignore: true)
  _$$_SearchAddressResponsesEntityCopyWith<_$_SearchAddressResponsesEntity>
      get copyWith => throw _privateConstructorUsedError;
}
