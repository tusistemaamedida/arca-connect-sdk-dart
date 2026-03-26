// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arca_health.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArcaHealth _$ArcaHealthFromJson(Map<String, dynamic> json) {
  return _ArcaHealth.fromJson(json);
}

/// @nodoc
mixin _$ArcaHealth {
  String get appServer => throw _privateConstructorUsedError;
  String get dbServer => throw _privateConstructorUsedError;
  String get authServer => throw _privateConstructorUsedError;

  /// Serializes this ArcaHealth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArcaHealth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArcaHealthCopyWith<ArcaHealth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArcaHealthCopyWith<$Res> {
  factory $ArcaHealthCopyWith(
          ArcaHealth value, $Res Function(ArcaHealth) then) =
      _$ArcaHealthCopyWithImpl<$Res, ArcaHealth>;
  @useResult
  $Res call({String appServer, String dbServer, String authServer});
}

/// @nodoc
class _$ArcaHealthCopyWithImpl<$Res, $Val extends ArcaHealth>
    implements $ArcaHealthCopyWith<$Res> {
  _$ArcaHealthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArcaHealth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appServer = null,
    Object? dbServer = null,
    Object? authServer = null,
  }) {
    return _then(_value.copyWith(
      appServer: null == appServer
          ? _value.appServer
          : appServer // ignore: cast_nullable_to_non_nullable
              as String,
      dbServer: null == dbServer
          ? _value.dbServer
          : dbServer // ignore: cast_nullable_to_non_nullable
              as String,
      authServer: null == authServer
          ? _value.authServer
          : authServer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArcaHealthImplCopyWith<$Res>
    implements $ArcaHealthCopyWith<$Res> {
  factory _$$ArcaHealthImplCopyWith(
          _$ArcaHealthImpl value, $Res Function(_$ArcaHealthImpl) then) =
      __$$ArcaHealthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appServer, String dbServer, String authServer});
}

/// @nodoc
class __$$ArcaHealthImplCopyWithImpl<$Res>
    extends _$ArcaHealthCopyWithImpl<$Res, _$ArcaHealthImpl>
    implements _$$ArcaHealthImplCopyWith<$Res> {
  __$$ArcaHealthImplCopyWithImpl(
      _$ArcaHealthImpl _value, $Res Function(_$ArcaHealthImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArcaHealth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appServer = null,
    Object? dbServer = null,
    Object? authServer = null,
  }) {
    return _then(_$ArcaHealthImpl(
      appServer: null == appServer
          ? _value.appServer
          : appServer // ignore: cast_nullable_to_non_nullable
              as String,
      dbServer: null == dbServer
          ? _value.dbServer
          : dbServer // ignore: cast_nullable_to_non_nullable
              as String,
      authServer: null == authServer
          ? _value.authServer
          : authServer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ArcaHealthImpl extends _ArcaHealth {
  const _$ArcaHealthImpl(
      {required this.appServer,
      required this.dbServer,
      required this.authServer})
      : super._();

  factory _$ArcaHealthImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArcaHealthImplFromJson(json);

  @override
  final String appServer;
  @override
  final String dbServer;
  @override
  final String authServer;

  @override
  String toString() {
    return 'ArcaHealth(appServer: $appServer, dbServer: $dbServer, authServer: $authServer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArcaHealthImpl &&
            (identical(other.appServer, appServer) ||
                other.appServer == appServer) &&
            (identical(other.dbServer, dbServer) ||
                other.dbServer == dbServer) &&
            (identical(other.authServer, authServer) ||
                other.authServer == authServer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appServer, dbServer, authServer);

  /// Create a copy of ArcaHealth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArcaHealthImplCopyWith<_$ArcaHealthImpl> get copyWith =>
      __$$ArcaHealthImplCopyWithImpl<_$ArcaHealthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArcaHealthImplToJson(
      this,
    );
  }
}

abstract class _ArcaHealth extends ArcaHealth {
  const factory _ArcaHealth(
      {required final String appServer,
      required final String dbServer,
      required final String authServer}) = _$ArcaHealthImpl;
  const _ArcaHealth._() : super._();

  factory _ArcaHealth.fromJson(Map<String, dynamic> json) =
      _$ArcaHealthImpl.fromJson;

  @override
  String get appServer;
  @override
  String get dbServer;
  @override
  String get authServer;

  /// Create a copy of ArcaHealth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArcaHealthImplCopyWith<_$ArcaHealthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
