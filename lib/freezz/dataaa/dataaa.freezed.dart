// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dataaa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dataaa _$DataaaFromJson(Map<String, dynamic> json) {
  return _Dataaa.fromJson(json);
}

/// @nodoc
mixin _$Dataaa {
  Location? get location => throw _privateConstructorUsedError;
  Current? get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataaaCopyWith<Dataaa> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataaaCopyWith<$Res> {
  factory $DataaaCopyWith(Dataaa value, $Res Function(Dataaa) then) =
      _$DataaaCopyWithImpl<$Res>;
  $Res call({Location? location, Current? current});

  $LocationCopyWith<$Res>? get location;
  $CurrentCopyWith<$Res>? get current;
}

/// @nodoc
class _$DataaaCopyWithImpl<$Res> implements $DataaaCopyWith<$Res> {
  _$DataaaCopyWithImpl(this._value, this._then);

  final Dataaa _value;
  // ignore: unused_field
  final $Res Function(Dataaa) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
    ));
  }

  @override
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $CurrentCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value));
    });
  }
}

/// @nodoc
abstract class _$$_DataaaCopyWith<$Res> implements $DataaaCopyWith<$Res> {
  factory _$$_DataaaCopyWith(_$_Dataaa value, $Res Function(_$_Dataaa) then) =
      __$$_DataaaCopyWithImpl<$Res>;
  @override
  $Res call({Location? location, Current? current});

  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $CurrentCopyWith<$Res>? get current;
}

/// @nodoc
class __$$_DataaaCopyWithImpl<$Res> extends _$DataaaCopyWithImpl<$Res>
    implements _$$_DataaaCopyWith<$Res> {
  __$$_DataaaCopyWithImpl(_$_Dataaa _value, $Res Function(_$_Dataaa) _then)
      : super(_value, (v) => _then(v as _$_Dataaa));

  @override
  _$_Dataaa get _value => super._value as _$_Dataaa;

  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_$_Dataaa(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dataaa implements _Dataaa {
  _$_Dataaa({this.location, this.current});

  factory _$_Dataaa.fromJson(Map<String, dynamic> json) =>
      _$$_DataaaFromJson(json);

  @override
  final Location? location;
  @override
  final Current? current;

  @override
  String toString() {
    return 'Dataaa(location: $location, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dataaa &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.current, current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(current));

  @JsonKey(ignore: true)
  @override
  _$$_DataaaCopyWith<_$_Dataaa> get copyWith =>
      __$$_DataaaCopyWithImpl<_$_Dataaa>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataaaToJson(
      this,
    );
  }
}

abstract class _Dataaa implements Dataaa {
  factory _Dataaa({final Location? location, final Current? current}) =
      _$_Dataaa;

  factory _Dataaa.fromJson(Map<String, dynamic> json) = _$_Dataaa.fromJson;

  @override
  Location? get location;
  @override
  Current? get current;
  @override
  @JsonKey(ignore: true)
  _$$_DataaaCopyWith<_$_Dataaa> get copyWith =>
      throw _privateConstructorUsedError;
}
