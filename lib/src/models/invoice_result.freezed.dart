// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InvoiceResult {

 bool get approved; String? get cae; String? get caeVto; int get cbteNumero; String get resultado; List<String> get observaciones; List<String> get errores;
/// Create a copy of InvoiceResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceResultCopyWith<InvoiceResult> get copyWith => _$InvoiceResultCopyWithImpl<InvoiceResult>(this as InvoiceResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceResult&&(identical(other.approved, approved) || other.approved == approved)&&(identical(other.cae, cae) || other.cae == cae)&&(identical(other.caeVto, caeVto) || other.caeVto == caeVto)&&(identical(other.cbteNumero, cbteNumero) || other.cbteNumero == cbteNumero)&&(identical(other.resultado, resultado) || other.resultado == resultado)&&const DeepCollectionEquality().equals(other.observaciones, observaciones)&&const DeepCollectionEquality().equals(other.errores, errores));
}


@override
int get hashCode => Object.hash(runtimeType,approved,cae,caeVto,cbteNumero,resultado,const DeepCollectionEquality().hash(observaciones),const DeepCollectionEquality().hash(errores));

@override
String toString() {
  return 'InvoiceResult(approved: $approved, cae: $cae, caeVto: $caeVto, cbteNumero: $cbteNumero, resultado: $resultado, observaciones: $observaciones, errores: $errores)';
}


}

/// @nodoc
abstract mixin class $InvoiceResultCopyWith<$Res>  {
  factory $InvoiceResultCopyWith(InvoiceResult value, $Res Function(InvoiceResult) _then) = _$InvoiceResultCopyWithImpl;
@useResult
$Res call({
 bool approved, String? cae, String? caeVto, int cbteNumero, String resultado, List<String> observaciones, List<String> errores
});




}
/// @nodoc
class _$InvoiceResultCopyWithImpl<$Res>
    implements $InvoiceResultCopyWith<$Res> {
  _$InvoiceResultCopyWithImpl(this._self, this._then);

  final InvoiceResult _self;
  final $Res Function(InvoiceResult) _then;

/// Create a copy of InvoiceResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? approved = null,Object? cae = freezed,Object? caeVto = freezed,Object? cbteNumero = null,Object? resultado = null,Object? observaciones = null,Object? errores = null,}) {
  return _then(_self.copyWith(
approved: null == approved ? _self.approved : approved // ignore: cast_nullable_to_non_nullable
as bool,cae: freezed == cae ? _self.cae : cae // ignore: cast_nullable_to_non_nullable
as String?,caeVto: freezed == caeVto ? _self.caeVto : caeVto // ignore: cast_nullable_to_non_nullable
as String?,cbteNumero: null == cbteNumero ? _self.cbteNumero : cbteNumero // ignore: cast_nullable_to_non_nullable
as int,resultado: null == resultado ? _self.resultado : resultado // ignore: cast_nullable_to_non_nullable
as String,observaciones: null == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as List<String>,errores: null == errores ? _self.errores : errores // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceResult].
extension InvoiceResultPatterns on InvoiceResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceResult value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceResult value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool approved,  String? cae,  String? caeVto,  int cbteNumero,  String resultado,  List<String> observaciones,  List<String> errores)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceResult() when $default != null:
return $default(_that.approved,_that.cae,_that.caeVto,_that.cbteNumero,_that.resultado,_that.observaciones,_that.errores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool approved,  String? cae,  String? caeVto,  int cbteNumero,  String resultado,  List<String> observaciones,  List<String> errores)  $default,) {final _that = this;
switch (_that) {
case _InvoiceResult():
return $default(_that.approved,_that.cae,_that.caeVto,_that.cbteNumero,_that.resultado,_that.observaciones,_that.errores);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool approved,  String? cae,  String? caeVto,  int cbteNumero,  String resultado,  List<String> observaciones,  List<String> errores)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceResult() when $default != null:
return $default(_that.approved,_that.cae,_that.caeVto,_that.cbteNumero,_that.resultado,_that.observaciones,_that.errores);case _:
  return null;

}
}

}

/// @nodoc


class _InvoiceResult implements InvoiceResult {
  const _InvoiceResult({required this.approved, this.cae, this.caeVto, required this.cbteNumero, required this.resultado, final  List<String> observaciones = const <String>[], final  List<String> errores = const <String>[]}): _observaciones = observaciones,_errores = errores;
  

@override final  bool approved;
@override final  String? cae;
@override final  String? caeVto;
@override final  int cbteNumero;
@override final  String resultado;
 final  List<String> _observaciones;
@override@JsonKey() List<String> get observaciones {
  if (_observaciones is EqualUnmodifiableListView) return _observaciones;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_observaciones);
}

 final  List<String> _errores;
@override@JsonKey() List<String> get errores {
  if (_errores is EqualUnmodifiableListView) return _errores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errores);
}


/// Create a copy of InvoiceResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceResultCopyWith<_InvoiceResult> get copyWith => __$InvoiceResultCopyWithImpl<_InvoiceResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceResult&&(identical(other.approved, approved) || other.approved == approved)&&(identical(other.cae, cae) || other.cae == cae)&&(identical(other.caeVto, caeVto) || other.caeVto == caeVto)&&(identical(other.cbteNumero, cbteNumero) || other.cbteNumero == cbteNumero)&&(identical(other.resultado, resultado) || other.resultado == resultado)&&const DeepCollectionEquality().equals(other._observaciones, _observaciones)&&const DeepCollectionEquality().equals(other._errores, _errores));
}


@override
int get hashCode => Object.hash(runtimeType,approved,cae,caeVto,cbteNumero,resultado,const DeepCollectionEquality().hash(_observaciones),const DeepCollectionEquality().hash(_errores));

@override
String toString() {
  return 'InvoiceResult(approved: $approved, cae: $cae, caeVto: $caeVto, cbteNumero: $cbteNumero, resultado: $resultado, observaciones: $observaciones, errores: $errores)';
}


}

/// @nodoc
abstract mixin class _$InvoiceResultCopyWith<$Res> implements $InvoiceResultCopyWith<$Res> {
  factory _$InvoiceResultCopyWith(_InvoiceResult value, $Res Function(_InvoiceResult) _then) = __$InvoiceResultCopyWithImpl;
@override @useResult
$Res call({
 bool approved, String? cae, String? caeVto, int cbteNumero, String resultado, List<String> observaciones, List<String> errores
});




}
/// @nodoc
class __$InvoiceResultCopyWithImpl<$Res>
    implements _$InvoiceResultCopyWith<$Res> {
  __$InvoiceResultCopyWithImpl(this._self, this._then);

  final _InvoiceResult _self;
  final $Res Function(_InvoiceResult) _then;

/// Create a copy of InvoiceResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? approved = null,Object? cae = freezed,Object? caeVto = freezed,Object? cbteNumero = null,Object? resultado = null,Object? observaciones = null,Object? errores = null,}) {
  return _then(_InvoiceResult(
approved: null == approved ? _self.approved : approved // ignore: cast_nullable_to_non_nullable
as bool,cae: freezed == cae ? _self.cae : cae // ignore: cast_nullable_to_non_nullable
as String?,caeVto: freezed == caeVto ? _self.caeVto : caeVto // ignore: cast_nullable_to_non_nullable
as String?,cbteNumero: null == cbteNumero ? _self.cbteNumero : cbteNumero // ignore: cast_nullable_to_non_nullable
as int,resultado: null == resultado ? _self.resultado : resultado // ignore: cast_nullable_to_non_nullable
as String,observaciones: null == observaciones ? _self._observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as List<String>,errores: null == errores ? _self._errores : errores // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
