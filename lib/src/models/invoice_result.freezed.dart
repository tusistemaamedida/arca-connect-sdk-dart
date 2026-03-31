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

 String? get id; bool get approved; String? get cae; String? get caeVto; String? get qr; int get cbteNumero; String get resultado; String? get cbteDate; String? get cuitEmisor; String? get environment; int? get puntoVenta; int? get cbteTipo; String? get cbteTipoNombre; int? get concepto; int? get docTipo; String? get docNro; int? get condicionIvaReceptorId; double? get impTotal; double? get impNeto; double? get impIva; String? get monId; List<InvoiceTax> get taxes; List<String> get observaciones; List<String> get errores; String? get createdAt; String? get updatedAt;
/// Create a copy of InvoiceResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceResultCopyWith<InvoiceResult> get copyWith => _$InvoiceResultCopyWithImpl<InvoiceResult>(this as InvoiceResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceResult&&(identical(other.id, id) || other.id == id)&&(identical(other.approved, approved) || other.approved == approved)&&(identical(other.cae, cae) || other.cae == cae)&&(identical(other.caeVto, caeVto) || other.caeVto == caeVto)&&(identical(other.qr, qr) || other.qr == qr)&&(identical(other.cbteNumero, cbteNumero) || other.cbteNumero == cbteNumero)&&(identical(other.resultado, resultado) || other.resultado == resultado)&&(identical(other.cbteDate, cbteDate) || other.cbteDate == cbteDate)&&(identical(other.cuitEmisor, cuitEmisor) || other.cuitEmisor == cuitEmisor)&&(identical(other.environment, environment) || other.environment == environment)&&(identical(other.puntoVenta, puntoVenta) || other.puntoVenta == puntoVenta)&&(identical(other.cbteTipo, cbteTipo) || other.cbteTipo == cbteTipo)&&(identical(other.cbteTipoNombre, cbteTipoNombre) || other.cbteTipoNombre == cbteTipoNombre)&&(identical(other.concepto, concepto) || other.concepto == concepto)&&(identical(other.docTipo, docTipo) || other.docTipo == docTipo)&&(identical(other.docNro, docNro) || other.docNro == docNro)&&(identical(other.condicionIvaReceptorId, condicionIvaReceptorId) || other.condicionIvaReceptorId == condicionIvaReceptorId)&&(identical(other.impTotal, impTotal) || other.impTotal == impTotal)&&(identical(other.impNeto, impNeto) || other.impNeto == impNeto)&&(identical(other.impIva, impIva) || other.impIva == impIva)&&(identical(other.monId, monId) || other.monId == monId)&&const DeepCollectionEquality().equals(other.taxes, taxes)&&const DeepCollectionEquality().equals(other.observaciones, observaciones)&&const DeepCollectionEquality().equals(other.errores, errores)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,approved,cae,caeVto,qr,cbteNumero,resultado,cbteDate,cuitEmisor,environment,puntoVenta,cbteTipo,cbteTipoNombre,concepto,docTipo,docNro,condicionIvaReceptorId,impTotal,impNeto,impIva,monId,const DeepCollectionEquality().hash(taxes),const DeepCollectionEquality().hash(observaciones),const DeepCollectionEquality().hash(errores),createdAt,updatedAt]);

@override
String toString() {
  return 'InvoiceResult(id: $id, approved: $approved, cae: $cae, caeVto: $caeVto, qr: $qr, cbteNumero: $cbteNumero, resultado: $resultado, cbteDate: $cbteDate, cuitEmisor: $cuitEmisor, environment: $environment, puntoVenta: $puntoVenta, cbteTipo: $cbteTipo, cbteTipoNombre: $cbteTipoNombre, concepto: $concepto, docTipo: $docTipo, docNro: $docNro, condicionIvaReceptorId: $condicionIvaReceptorId, impTotal: $impTotal, impNeto: $impNeto, impIva: $impIva, monId: $monId, taxes: $taxes, observaciones: $observaciones, errores: $errores, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $InvoiceResultCopyWith<$Res>  {
  factory $InvoiceResultCopyWith(InvoiceResult value, $Res Function(InvoiceResult) _then) = _$InvoiceResultCopyWithImpl;
@useResult
$Res call({
 String? id, bool approved, String? cae, String? caeVto, String? qr, int cbteNumero, String resultado, String? cbteDate, String? cuitEmisor, String? environment, int? puntoVenta, int? cbteTipo, String? cbteTipoNombre, int? concepto, int? docTipo, String? docNro, int? condicionIvaReceptorId, double? impTotal, double? impNeto, double? impIva, String? monId, List<InvoiceTax> taxes, List<String> observaciones, List<String> errores, String? createdAt, String? updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? approved = null,Object? cae = freezed,Object? caeVto = freezed,Object? qr = freezed,Object? cbteNumero = null,Object? resultado = null,Object? cbteDate = freezed,Object? cuitEmisor = freezed,Object? environment = freezed,Object? puntoVenta = freezed,Object? cbteTipo = freezed,Object? cbteTipoNombre = freezed,Object? concepto = freezed,Object? docTipo = freezed,Object? docNro = freezed,Object? condicionIvaReceptorId = freezed,Object? impTotal = freezed,Object? impNeto = freezed,Object? impIva = freezed,Object? monId = freezed,Object? taxes = null,Object? observaciones = null,Object? errores = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,approved: null == approved ? _self.approved : approved // ignore: cast_nullable_to_non_nullable
as bool,cae: freezed == cae ? _self.cae : cae // ignore: cast_nullable_to_non_nullable
as String?,caeVto: freezed == caeVto ? _self.caeVto : caeVto // ignore: cast_nullable_to_non_nullable
as String?,qr: freezed == qr ? _self.qr : qr // ignore: cast_nullable_to_non_nullable
as String?,cbteNumero: null == cbteNumero ? _self.cbteNumero : cbteNumero // ignore: cast_nullable_to_non_nullable
as int,resultado: null == resultado ? _self.resultado : resultado // ignore: cast_nullable_to_non_nullable
as String,cbteDate: freezed == cbteDate ? _self.cbteDate : cbteDate // ignore: cast_nullable_to_non_nullable
as String?,cuitEmisor: freezed == cuitEmisor ? _self.cuitEmisor : cuitEmisor // ignore: cast_nullable_to_non_nullable
as String?,environment: freezed == environment ? _self.environment : environment // ignore: cast_nullable_to_non_nullable
as String?,puntoVenta: freezed == puntoVenta ? _self.puntoVenta : puntoVenta // ignore: cast_nullable_to_non_nullable
as int?,cbteTipo: freezed == cbteTipo ? _self.cbteTipo : cbteTipo // ignore: cast_nullable_to_non_nullable
as int?,cbteTipoNombre: freezed == cbteTipoNombre ? _self.cbteTipoNombre : cbteTipoNombre // ignore: cast_nullable_to_non_nullable
as String?,concepto: freezed == concepto ? _self.concepto : concepto // ignore: cast_nullable_to_non_nullable
as int?,docTipo: freezed == docTipo ? _self.docTipo : docTipo // ignore: cast_nullable_to_non_nullable
as int?,docNro: freezed == docNro ? _self.docNro : docNro // ignore: cast_nullable_to_non_nullable
as String?,condicionIvaReceptorId: freezed == condicionIvaReceptorId ? _self.condicionIvaReceptorId : condicionIvaReceptorId // ignore: cast_nullable_to_non_nullable
as int?,impTotal: freezed == impTotal ? _self.impTotal : impTotal // ignore: cast_nullable_to_non_nullable
as double?,impNeto: freezed == impNeto ? _self.impNeto : impNeto // ignore: cast_nullable_to_non_nullable
as double?,impIva: freezed == impIva ? _self.impIva : impIva // ignore: cast_nullable_to_non_nullable
as double?,monId: freezed == monId ? _self.monId : monId // ignore: cast_nullable_to_non_nullable
as String?,taxes: null == taxes ? _self.taxes : taxes // ignore: cast_nullable_to_non_nullable
as List<InvoiceTax>,observaciones: null == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as List<String>,errores: null == errores ? _self.errores : errores // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceResult].
extension InvoiceResultPatterns on InvoiceResult {
@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceResult value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceResult value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  bool approved,  String? cae,  String? caeVto,  String? qr,  int cbteNumero,  String resultado,  String? cbteDate,  String? cuitEmisor,  String? environment,  int? puntoVenta,  int? cbteTipo,  String? cbteTipoNombre,  int? concepto,  int? docTipo,  String? docNro,  int? condicionIvaReceptorId,  double? impTotal,  double? impNeto,  double? impIva,  String? monId,  List<InvoiceTax> taxes,  List<String> observaciones,  List<String> errores,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceResult() when $default != null:
return $default(_that.id,_that.approved,_that.cae,_that.caeVto,_that.qr,_that.cbteNumero,_that.resultado,_that.cbteDate,_that.cuitEmisor,_that.environment,_that.puntoVenta,_that.cbteTipo,_that.cbteTipoNombre,_that.concepto,_that.docTipo,_that.docNro,_that.condicionIvaReceptorId,_that.impTotal,_that.impNeto,_that.impIva,_that.monId,_that.taxes,_that.observaciones,_that.errores,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  bool approved,  String? cae,  String? caeVto,  String? qr,  int cbteNumero,  String resultado,  String? cbteDate,  String? cuitEmisor,  String? environment,  int? puntoVenta,  int? cbteTipo,  String? cbteTipoNombre,  int? concepto,  int? docTipo,  String? docNro,  int? condicionIvaReceptorId,  double? impTotal,  double? impNeto,  double? impIva,  String? monId,  List<InvoiceTax> taxes,  List<String> observaciones,  List<String> errores,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _InvoiceResult():
return $default(_that.id,_that.approved,_that.cae,_that.caeVto,_that.qr,_that.cbteNumero,_that.resultado,_that.cbteDate,_that.cuitEmisor,_that.environment,_that.puntoVenta,_that.cbteTipo,_that.cbteTipoNombre,_that.concepto,_that.docTipo,_that.docNro,_that.condicionIvaReceptorId,_that.impTotal,_that.impNeto,_that.impIva,_that.monId,_that.taxes,_that.observaciones,_that.errores,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  bool approved,  String? cae,  String? caeVto,  String? qr,  int cbteNumero,  String resultado,  String? cbteDate,  String? cuitEmisor,  String? environment,  int? puntoVenta,  int? cbteTipo,  String? cbteTipoNombre,  int? concepto,  int? docTipo,  String? docNro,  int? condicionIvaReceptorId,  double? impTotal,  double? impNeto,  double? impIva,  String? monId,  List<InvoiceTax> taxes,  List<String> observaciones,  List<String> errores,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceResult() when $default != null:
return $default(_that.id,_that.approved,_that.cae,_that.caeVto,_that.qr,_that.cbteNumero,_that.resultado,_that.cbteDate,_that.cuitEmisor,_that.environment,_that.puntoVenta,_that.cbteTipo,_that.cbteTipoNombre,_that.concepto,_that.docTipo,_that.docNro,_that.condicionIvaReceptorId,_that.impTotal,_that.impNeto,_that.impIva,_that.monId,_that.taxes,_that.observaciones,_that.errores,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _InvoiceResult implements InvoiceResult {
  const _InvoiceResult({this.id, required this.approved, this.cae, this.caeVto, this.qr, required this.cbteNumero, required this.resultado, this.cbteDate, this.cuitEmisor, this.environment, this.puntoVenta, this.cbteTipo, this.cbteTipoNombre, this.concepto, this.docTipo, this.docNro, this.condicionIvaReceptorId, this.impTotal, this.impNeto, this.impIva, this.monId, final  List<InvoiceTax> taxes = const <InvoiceTax>[], final  List<String> observaciones = const <String>[], final  List<String> errores = const <String>[], this.createdAt, this.updatedAt}): _taxes = taxes,_observaciones = observaciones,_errores = errores;


@override final  String? id;
@override final  bool approved;
@override final  String? cae;
@override final  String? caeVto;
@override final  String? qr;
@override final  int cbteNumero;
@override final  String resultado;
@override final  String? cbteDate;
@override final  String? cuitEmisor;
@override final  String? environment;
@override final  int? puntoVenta;
@override final  int? cbteTipo;
@override final  String? cbteTipoNombre;
@override final  int? concepto;
@override final  int? docTipo;
@override final  String? docNro;
@override final  int? condicionIvaReceptorId;
@override final  double? impTotal;
@override final  double? impNeto;
@override final  double? impIva;
@override final  String? monId;
 final  List<InvoiceTax> _taxes;
@override@JsonKey() List<InvoiceTax> get taxes {
  if (_taxes is EqualUnmodifiableListView) return _taxes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_taxes);
}

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

@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of InvoiceResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceResultCopyWith<_InvoiceResult> get copyWith => __$InvoiceResultCopyWithImpl<_InvoiceResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceResult&&(identical(other.id, id) || other.id == id)&&(identical(other.approved, approved) || other.approved == approved)&&(identical(other.cae, cae) || other.cae == cae)&&(identical(other.caeVto, caeVto) || other.caeVto == caeVto)&&(identical(other.qr, qr) || other.qr == qr)&&(identical(other.cbteNumero, cbteNumero) || other.cbteNumero == cbteNumero)&&(identical(other.resultado, resultado) || other.resultado == resultado)&&(identical(other.cbteDate, cbteDate) || other.cbteDate == cbteDate)&&(identical(other.cuitEmisor, cuitEmisor) || other.cuitEmisor == cuitEmisor)&&(identical(other.environment, environment) || other.environment == environment)&&(identical(other.puntoVenta, puntoVenta) || other.puntoVenta == puntoVenta)&&(identical(other.cbteTipo, cbteTipo) || other.cbteTipo == cbteTipo)&&(identical(other.cbteTipoNombre, cbteTipoNombre) || other.cbteTipoNombre == cbteTipoNombre)&&(identical(other.concepto, concepto) || other.concepto == concepto)&&(identical(other.docTipo, docTipo) || other.docTipo == docTipo)&&(identical(other.docNro, docNro) || other.docNro == docNro)&&(identical(other.condicionIvaReceptorId, condicionIvaReceptorId) || other.condicionIvaReceptorId == condicionIvaReceptorId)&&(identical(other.impTotal, impTotal) || other.impTotal == impTotal)&&(identical(other.impNeto, impNeto) || other.impNeto == impNeto)&&(identical(other.impIva, impIva) || other.impIva == impIva)&&(identical(other.monId, monId) || other.monId == monId)&&const DeepCollectionEquality().equals(other._taxes, _taxes)&&const DeepCollectionEquality().equals(other._observaciones, _observaciones)&&const DeepCollectionEquality().equals(other._errores, _errores)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,approved,cae,caeVto,qr,cbteNumero,resultado,cbteDate,cuitEmisor,environment,puntoVenta,cbteTipo,cbteTipoNombre,concepto,docTipo,docNro,condicionIvaReceptorId,impTotal,impNeto,impIva,monId,const DeepCollectionEquality().hash(_taxes),const DeepCollectionEquality().hash(_observaciones),const DeepCollectionEquality().hash(_errores),createdAt,updatedAt]);

@override
String toString() {
  return 'InvoiceResult(id: $id, approved: $approved, cae: $cae, caeVto: $caeVto, qr: $qr, cbteNumero: $cbteNumero, resultado: $resultado, cbteDate: $cbteDate, cuitEmisor: $cuitEmisor, environment: $environment, puntoVenta: $puntoVenta, cbteTipo: $cbteTipo, cbteTipoNombre: $cbteTipoNombre, concepto: $concepto, docTipo: $docTipo, docNro: $docNro, condicionIvaReceptorId: $condicionIvaReceptorId, impTotal: $impTotal, impNeto: $impNeto, impIva: $impIva, monId: $monId, taxes: $taxes, observaciones: $observaciones, errores: $errores, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$InvoiceResultCopyWith<$Res> implements $InvoiceResultCopyWith<$Res> {
  factory _$InvoiceResultCopyWith(_InvoiceResult value, $Res Function(_InvoiceResult) _then) = __$InvoiceResultCopyWithImpl;
@override @useResult
$Res call({
 String? id, bool approved, String? cae, String? caeVto, String? qr, int cbteNumero, String resultado, String? cbteDate, String? cuitEmisor, String? environment, int? puntoVenta, int? cbteTipo, String? cbteTipoNombre, int? concepto, int? docTipo, String? docNro, int? condicionIvaReceptorId, double? impTotal, double? impNeto, double? impIva, String? monId, List<InvoiceTax> taxes, List<String> observaciones, List<String> errores, String? createdAt, String? updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? approved = null,Object? cae = freezed,Object? caeVto = freezed,Object? qr = freezed,Object? cbteNumero = null,Object? resultado = null,Object? cbteDate = freezed,Object? cuitEmisor = freezed,Object? environment = freezed,Object? puntoVenta = freezed,Object? cbteTipo = freezed,Object? cbteTipoNombre = freezed,Object? concepto = freezed,Object? docTipo = freezed,Object? docNro = freezed,Object? condicionIvaReceptorId = freezed,Object? impTotal = freezed,Object? impNeto = freezed,Object? impIva = freezed,Object? monId = freezed,Object? taxes = null,Object? observaciones = null,Object? errores = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_InvoiceResult(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,approved: null == approved ? _self.approved : approved // ignore: cast_nullable_to_non_nullable
as bool,cae: freezed == cae ? _self.cae : cae // ignore: cast_nullable_to_non_nullable
as String?,caeVto: freezed == caeVto ? _self.caeVto : caeVto // ignore: cast_nullable_to_non_nullable
as String?,qr: freezed == qr ? _self.qr : qr // ignore: cast_nullable_to_non_nullable
as String?,cbteNumero: null == cbteNumero ? _self.cbteNumero : cbteNumero // ignore: cast_nullable_to_non_nullable
as int,resultado: null == resultado ? _self.resultado : resultado // ignore: cast_nullable_to_non_nullable
as String,cbteDate: freezed == cbteDate ? _self.cbteDate : cbteDate // ignore: cast_nullable_to_non_nullable
as String?,cuitEmisor: freezed == cuitEmisor ? _self.cuitEmisor : cuitEmisor // ignore: cast_nullable_to_non_nullable
as String?,environment: freezed == environment ? _self.environment : environment // ignore: cast_nullable_to_non_nullable
as String?,puntoVenta: freezed == puntoVenta ? _self.puntoVenta : puntoVenta // ignore: cast_nullable_to_non_nullable
as int?,cbteTipo: freezed == cbteTipo ? _self.cbteTipo : cbteTipo // ignore: cast_nullable_to_non_nullable
as int?,cbteTipoNombre: freezed == cbteTipoNombre ? _self.cbteTipoNombre : cbteTipoNombre // ignore: cast_nullable_to_non_nullable
as String?,concepto: freezed == concepto ? _self.concepto : concepto // ignore: cast_nullable_to_non_nullable
as int?,docTipo: freezed == docTipo ? _self.docTipo : docTipo // ignore: cast_nullable_to_non_nullable
as int?,docNro: freezed == docNro ? _self.docNro : docNro // ignore: cast_nullable_to_non_nullable
as String?,condicionIvaReceptorId: freezed == condicionIvaReceptorId ? _self.condicionIvaReceptorId : condicionIvaReceptorId // ignore: cast_nullable_to_non_nullable
as int?,impTotal: freezed == impTotal ? _self.impTotal : impTotal // ignore: cast_nullable_to_non_nullable
as double?,impNeto: freezed == impNeto ? _self.impNeto : impNeto // ignore: cast_nullable_to_non_nullable
as double?,impIva: freezed == impIva ? _self.impIva : impIva // ignore: cast_nullable_to_non_nullable
as double?,monId: freezed == monId ? _self.monId : monId // ignore: cast_nullable_to_non_nullable
as String?,taxes: null == taxes ? _self._taxes : taxes // ignore: cast_nullable_to_non_nullable
as List<InvoiceTax>,observaciones: null == observaciones ? _self._observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as List<String>,errores: null == errores ? _self._errores : errores // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
