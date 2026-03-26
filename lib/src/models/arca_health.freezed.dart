// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arca_health.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArcaHealth {

/// Estado reportado del servidor de aplicación (por ejemplo `OK`).
 String get appServer;/// Estado reportado del servidor de base de datos.
 String get dbServer;/// Estado reportado del servidor de autenticación.
 String get authServer;
/// Create a copy of ArcaHealth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArcaHealthCopyWith<ArcaHealth> get copyWith => _$ArcaHealthCopyWithImpl<ArcaHealth>(this as ArcaHealth, _$identity);

  /// Serializes this ArcaHealth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArcaHealth&&(identical(other.appServer, appServer) || other.appServer == appServer)&&(identical(other.dbServer, dbServer) || other.dbServer == dbServer)&&(identical(other.authServer, authServer) || other.authServer == authServer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appServer,dbServer,authServer);

@override
String toString() {
  return 'ArcaHealth(appServer: $appServer, dbServer: $dbServer, authServer: $authServer)';
}


}

/// @nodoc
abstract mixin class $ArcaHealthCopyWith<$Res>  {
  factory $ArcaHealthCopyWith(ArcaHealth value, $Res Function(ArcaHealth) _then) = _$ArcaHealthCopyWithImpl;
@useResult
$Res call({
 String appServer, String dbServer, String authServer
});




}
/// @nodoc
class _$ArcaHealthCopyWithImpl<$Res>
    implements $ArcaHealthCopyWith<$Res> {
  _$ArcaHealthCopyWithImpl(this._self, this._then);

  final ArcaHealth _self;
  final $Res Function(ArcaHealth) _then;

/// Create a copy of ArcaHealth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appServer = null,Object? dbServer = null,Object? authServer = null,}) {
  return _then(_self.copyWith(
appServer: null == appServer ? _self.appServer : appServer // ignore: cast_nullable_to_non_nullable
as String,dbServer: null == dbServer ? _self.dbServer : dbServer // ignore: cast_nullable_to_non_nullable
as String,authServer: null == authServer ? _self.authServer : authServer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ArcaHealth].
extension ArcaHealthPatterns on ArcaHealth {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArcaHealth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArcaHealth() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArcaHealth value)  $default,){
final _that = this;
switch (_that) {
case _ArcaHealth():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArcaHealth value)?  $default,){
final _that = this;
switch (_that) {
case _ArcaHealth() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appServer,  String dbServer,  String authServer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArcaHealth() when $default != null:
return $default(_that.appServer,_that.dbServer,_that.authServer);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appServer,  String dbServer,  String authServer)  $default,) {final _that = this;
switch (_that) {
case _ArcaHealth():
return $default(_that.appServer,_that.dbServer,_that.authServer);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appServer,  String dbServer,  String authServer)?  $default,) {final _that = this;
switch (_that) {
case _ArcaHealth() when $default != null:
return $default(_that.appServer,_that.dbServer,_that.authServer);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ArcaHealth extends ArcaHealth {
  const _ArcaHealth({required this.appServer, required this.dbServer, required this.authServer}): super._();
  factory _ArcaHealth.fromJson(Map<String, dynamic> json) => _$ArcaHealthFromJson(json);

/// Estado reportado del servidor de aplicación (por ejemplo `OK`).
@override final  String appServer;
/// Estado reportado del servidor de base de datos.
@override final  String dbServer;
/// Estado reportado del servidor de autenticación.
@override final  String authServer;

/// Create a copy of ArcaHealth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArcaHealthCopyWith<_ArcaHealth> get copyWith => __$ArcaHealthCopyWithImpl<_ArcaHealth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArcaHealthToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArcaHealth&&(identical(other.appServer, appServer) || other.appServer == appServer)&&(identical(other.dbServer, dbServer) || other.dbServer == dbServer)&&(identical(other.authServer, authServer) || other.authServer == authServer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appServer,dbServer,authServer);

@override
String toString() {
  return 'ArcaHealth(appServer: $appServer, dbServer: $dbServer, authServer: $authServer)';
}


}

/// @nodoc
abstract mixin class _$ArcaHealthCopyWith<$Res> implements $ArcaHealthCopyWith<$Res> {
  factory _$ArcaHealthCopyWith(_ArcaHealth value, $Res Function(_ArcaHealth) _then) = __$ArcaHealthCopyWithImpl;
@override @useResult
$Res call({
 String appServer, String dbServer, String authServer
});




}
/// @nodoc
class __$ArcaHealthCopyWithImpl<$Res>
    implements _$ArcaHealthCopyWith<$Res> {
  __$ArcaHealthCopyWithImpl(this._self, this._then);

  final _ArcaHealth _self;
  final $Res Function(_ArcaHealth) _then;

/// Create a copy of ArcaHealth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appServer = null,Object? dbServer = null,Object? authServer = null,}) {
  return _then(_ArcaHealth(
appServer: null == appServer ? _self.appServer : appServer // ignore: cast_nullable_to_non_nullable
as String,dbServer: null == dbServer ? _self.dbServer : dbServer // ignore: cast_nullable_to_non_nullable
as String,authServer: null == authServer ? _self.authServer : authServer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
