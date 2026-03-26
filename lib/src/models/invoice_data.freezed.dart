// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IvaItem {

@JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson) AlicuotaIva get id; double get baseImp; double get importe;
/// Create a copy of IvaItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IvaItemCopyWith<IvaItem> get copyWith => _$IvaItemCopyWithImpl<IvaItem>(this as IvaItem, _$identity);

  /// Serializes this IvaItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IvaItem&&(identical(other.id, id) || other.id == id)&&(identical(other.baseImp, baseImp) || other.baseImp == baseImp)&&(identical(other.importe, importe) || other.importe == importe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,baseImp,importe);

@override
String toString() {
  return 'IvaItem(id: $id, baseImp: $baseImp, importe: $importe)';
}


}

/// @nodoc
abstract mixin class $IvaItemCopyWith<$Res>  {
  factory $IvaItemCopyWith(IvaItem value, $Res Function(IvaItem) _then) = _$IvaItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson) AlicuotaIva id, double baseImp, double importe
});




}
/// @nodoc
class _$IvaItemCopyWithImpl<$Res>
    implements $IvaItemCopyWith<$Res> {
  _$IvaItemCopyWithImpl(this._self, this._then);

  final IvaItem _self;
  final $Res Function(IvaItem) _then;

/// Create a copy of IvaItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? baseImp = null,Object? importe = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as AlicuotaIva,baseImp: null == baseImp ? _self.baseImp : baseImp // ignore: cast_nullable_to_non_nullable
as double,importe: null == importe ? _self.importe : importe // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [IvaItem].
extension IvaItemPatterns on IvaItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IvaItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IvaItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IvaItem value)  $default,){
final _that = this;
switch (_that) {
case _IvaItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IvaItem value)?  $default,){
final _that = this;
switch (_that) {
case _IvaItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson)  AlicuotaIva id,  double baseImp,  double importe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IvaItem() when $default != null:
return $default(_that.id,_that.baseImp,_that.importe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson)  AlicuotaIva id,  double baseImp,  double importe)  $default,) {final _that = this;
switch (_that) {
case _IvaItem():
return $default(_that.id,_that.baseImp,_that.importe);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson)  AlicuotaIva id,  double baseImp,  double importe)?  $default,) {final _that = this;
switch (_that) {
case _IvaItem() when $default != null:
return $default(_that.id,_that.baseImp,_that.importe);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _IvaItem implements IvaItem {
  const _IvaItem({@JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson) required this.id, required this.baseImp, required this.importe});
  factory _IvaItem.fromJson(Map<String, dynamic> json) => _$IvaItemFromJson(json);

@override@JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson) final  AlicuotaIva id;
@override final  double baseImp;
@override final  double importe;

/// Create a copy of IvaItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IvaItemCopyWith<_IvaItem> get copyWith => __$IvaItemCopyWithImpl<_IvaItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IvaItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IvaItem&&(identical(other.id, id) || other.id == id)&&(identical(other.baseImp, baseImp) || other.baseImp == baseImp)&&(identical(other.importe, importe) || other.importe == importe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,baseImp,importe);

@override
String toString() {
  return 'IvaItem(id: $id, baseImp: $baseImp, importe: $importe)';
}


}

/// @nodoc
abstract mixin class _$IvaItemCopyWith<$Res> implements $IvaItemCopyWith<$Res> {
  factory _$IvaItemCopyWith(_IvaItem value, $Res Function(_IvaItem) _then) = __$IvaItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson) AlicuotaIva id, double baseImp, double importe
});




}
/// @nodoc
class __$IvaItemCopyWithImpl<$Res>
    implements _$IvaItemCopyWith<$Res> {
  __$IvaItemCopyWithImpl(this._self, this._then);

  final _IvaItem _self;
  final $Res Function(_IvaItem) _then;

/// Create a copy of IvaItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? baseImp = null,Object? importe = null,}) {
  return _then(_IvaItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as AlicuotaIva,baseImp: null == baseImp ? _self.baseImp : baseImp // ignore: cast_nullable_to_non_nullable
as double,importe: null == importe ? _self.importe : importe // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$InvoiceData {

 int get puntoVenta;@JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson) CbteTipo get cbteTipo;@JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson) Concepto get concepto;@JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson) DocTipo get docTipo; String get docNro; double get impTotal; double get impNeto; double get impIva; double get impTotConc; double get impOpEx; double get impTrib; String get monId; double get monCotiz; DateTime? get fchServDesde; DateTime? get fchServHasta; DateTime? get fchVtoPago; List<IvaItem> get iva;
/// Create a copy of InvoiceData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceDataCopyWith<InvoiceData> get copyWith => _$InvoiceDataCopyWithImpl<InvoiceData>(this as InvoiceData, _$identity);

  /// Serializes this InvoiceData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceData&&(identical(other.puntoVenta, puntoVenta) || other.puntoVenta == puntoVenta)&&(identical(other.cbteTipo, cbteTipo) || other.cbteTipo == cbteTipo)&&(identical(other.concepto, concepto) || other.concepto == concepto)&&(identical(other.docTipo, docTipo) || other.docTipo == docTipo)&&(identical(other.docNro, docNro) || other.docNro == docNro)&&(identical(other.impTotal, impTotal) || other.impTotal == impTotal)&&(identical(other.impNeto, impNeto) || other.impNeto == impNeto)&&(identical(other.impIva, impIva) || other.impIva == impIva)&&(identical(other.impTotConc, impTotConc) || other.impTotConc == impTotConc)&&(identical(other.impOpEx, impOpEx) || other.impOpEx == impOpEx)&&(identical(other.impTrib, impTrib) || other.impTrib == impTrib)&&(identical(other.monId, monId) || other.monId == monId)&&(identical(other.monCotiz, monCotiz) || other.monCotiz == monCotiz)&&(identical(other.fchServDesde, fchServDesde) || other.fchServDesde == fchServDesde)&&(identical(other.fchServHasta, fchServHasta) || other.fchServHasta == fchServHasta)&&(identical(other.fchVtoPago, fchVtoPago) || other.fchVtoPago == fchVtoPago)&&const DeepCollectionEquality().equals(other.iva, iva));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,puntoVenta,cbteTipo,concepto,docTipo,docNro,impTotal,impNeto,impIva,impTotConc,impOpEx,impTrib,monId,monCotiz,fchServDesde,fchServHasta,fchVtoPago,const DeepCollectionEquality().hash(iva));

@override
String toString() {
  return 'InvoiceData(puntoVenta: $puntoVenta, cbteTipo: $cbteTipo, concepto: $concepto, docTipo: $docTipo, docNro: $docNro, impTotal: $impTotal, impNeto: $impNeto, impIva: $impIva, impTotConc: $impTotConc, impOpEx: $impOpEx, impTrib: $impTrib, monId: $monId, monCotiz: $monCotiz, fchServDesde: $fchServDesde, fchServHasta: $fchServHasta, fchVtoPago: $fchVtoPago, iva: $iva)';
}


}

/// @nodoc
abstract mixin class $InvoiceDataCopyWith<$Res>  {
  factory $InvoiceDataCopyWith(InvoiceData value, $Res Function(InvoiceData) _then) = _$InvoiceDataCopyWithImpl;
@useResult
$Res call({
 int puntoVenta,@JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson) CbteTipo cbteTipo,@JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson) Concepto concepto,@JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson) DocTipo docTipo, String docNro, double impTotal, double impNeto, double impIva, double impTotConc, double impOpEx, double impTrib, String monId, double monCotiz, DateTime? fchServDesde, DateTime? fchServHasta, DateTime? fchVtoPago, List<IvaItem> iva
});




}
/// @nodoc
class _$InvoiceDataCopyWithImpl<$Res>
    implements $InvoiceDataCopyWith<$Res> {
  _$InvoiceDataCopyWithImpl(this._self, this._then);

  final InvoiceData _self;
  final $Res Function(InvoiceData) _then;

/// Create a copy of InvoiceData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? puntoVenta = null,Object? cbteTipo = null,Object? concepto = null,Object? docTipo = null,Object? docNro = null,Object? impTotal = null,Object? impNeto = null,Object? impIva = null,Object? impTotConc = null,Object? impOpEx = null,Object? impTrib = null,Object? monId = null,Object? monCotiz = null,Object? fchServDesde = freezed,Object? fchServHasta = freezed,Object? fchVtoPago = freezed,Object? iva = null,}) {
  return _then(_self.copyWith(
puntoVenta: null == puntoVenta ? _self.puntoVenta : puntoVenta // ignore: cast_nullable_to_non_nullable
as int,cbteTipo: null == cbteTipo ? _self.cbteTipo : cbteTipo // ignore: cast_nullable_to_non_nullable
as CbteTipo,concepto: null == concepto ? _self.concepto : concepto // ignore: cast_nullable_to_non_nullable
as Concepto,docTipo: null == docTipo ? _self.docTipo : docTipo // ignore: cast_nullable_to_non_nullable
as DocTipo,docNro: null == docNro ? _self.docNro : docNro // ignore: cast_nullable_to_non_nullable
as String,impTotal: null == impTotal ? _self.impTotal : impTotal // ignore: cast_nullable_to_non_nullable
as double,impNeto: null == impNeto ? _self.impNeto : impNeto // ignore: cast_nullable_to_non_nullable
as double,impIva: null == impIva ? _self.impIva : impIva // ignore: cast_nullable_to_non_nullable
as double,impTotConc: null == impTotConc ? _self.impTotConc : impTotConc // ignore: cast_nullable_to_non_nullable
as double,impOpEx: null == impOpEx ? _self.impOpEx : impOpEx // ignore: cast_nullable_to_non_nullable
as double,impTrib: null == impTrib ? _self.impTrib : impTrib // ignore: cast_nullable_to_non_nullable
as double,monId: null == monId ? _self.monId : monId // ignore: cast_nullable_to_non_nullable
as String,monCotiz: null == monCotiz ? _self.monCotiz : monCotiz // ignore: cast_nullable_to_non_nullable
as double,fchServDesde: freezed == fchServDesde ? _self.fchServDesde : fchServDesde // ignore: cast_nullable_to_non_nullable
as DateTime?,fchServHasta: freezed == fchServHasta ? _self.fchServHasta : fchServHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,fchVtoPago: freezed == fchVtoPago ? _self.fchVtoPago : fchVtoPago // ignore: cast_nullable_to_non_nullable
as DateTime?,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as List<IvaItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceData].
extension InvoiceDataPatterns on InvoiceData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceData value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceData value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int puntoVenta, @JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson)  CbteTipo cbteTipo, @JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson)  Concepto concepto, @JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson)  DocTipo docTipo,  String docNro,  double impTotal,  double impNeto,  double impIva,  double impTotConc,  double impOpEx,  double impTrib,  String monId,  double monCotiz,  DateTime? fchServDesde,  DateTime? fchServHasta,  DateTime? fchVtoPago,  List<IvaItem> iva)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceData() when $default != null:
return $default(_that.puntoVenta,_that.cbteTipo,_that.concepto,_that.docTipo,_that.docNro,_that.impTotal,_that.impNeto,_that.impIva,_that.impTotConc,_that.impOpEx,_that.impTrib,_that.monId,_that.monCotiz,_that.fchServDesde,_that.fchServHasta,_that.fchVtoPago,_that.iva);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int puntoVenta, @JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson)  CbteTipo cbteTipo, @JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson)  Concepto concepto, @JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson)  DocTipo docTipo,  String docNro,  double impTotal,  double impNeto,  double impIva,  double impTotConc,  double impOpEx,  double impTrib,  String monId,  double monCotiz,  DateTime? fchServDesde,  DateTime? fchServHasta,  DateTime? fchVtoPago,  List<IvaItem> iva)  $default,) {final _that = this;
switch (_that) {
case _InvoiceData():
return $default(_that.puntoVenta,_that.cbteTipo,_that.concepto,_that.docTipo,_that.docNro,_that.impTotal,_that.impNeto,_that.impIva,_that.impTotConc,_that.impOpEx,_that.impTrib,_that.monId,_that.monCotiz,_that.fchServDesde,_that.fchServHasta,_that.fchVtoPago,_that.iva);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int puntoVenta, @JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson)  CbteTipo cbteTipo, @JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson)  Concepto concepto, @JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson)  DocTipo docTipo,  String docNro,  double impTotal,  double impNeto,  double impIva,  double impTotConc,  double impOpEx,  double impTrib,  String monId,  double monCotiz,  DateTime? fchServDesde,  DateTime? fchServHasta,  DateTime? fchVtoPago,  List<IvaItem> iva)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceData() when $default != null:
return $default(_that.puntoVenta,_that.cbteTipo,_that.concepto,_that.docTipo,_that.docNro,_that.impTotal,_that.impNeto,_that.impIva,_that.impTotConc,_that.impOpEx,_that.impTrib,_that.monId,_that.monCotiz,_that.fchServDesde,_that.fchServHasta,_that.fchVtoPago,_that.iva);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _InvoiceData extends InvoiceData {
  const _InvoiceData({required this.puntoVenta, @JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson) required this.cbteTipo, @JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson) required this.concepto, @JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson) required this.docTipo, required this.docNro, required this.impTotal, required this.impNeto, required this.impIva, this.impTotConc = 0, this.impOpEx = 0, this.impTrib = 0, this.monId = 'PES', this.monCotiz = 1, this.fchServDesde, this.fchServHasta, this.fchVtoPago, final  List<IvaItem> iva = const <IvaItem>[]}): _iva = iva,super._();
  factory _InvoiceData.fromJson(Map<String, dynamic> json) => _$InvoiceDataFromJson(json);

@override final  int puntoVenta;
@override@JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson) final  CbteTipo cbteTipo;
@override@JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson) final  Concepto concepto;
@override@JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson) final  DocTipo docTipo;
@override final  String docNro;
@override final  double impTotal;
@override final  double impNeto;
@override final  double impIva;
@override@JsonKey() final  double impTotConc;
@override@JsonKey() final  double impOpEx;
@override@JsonKey() final  double impTrib;
@override@JsonKey() final  String monId;
@override@JsonKey() final  double monCotiz;
@override final  DateTime? fchServDesde;
@override final  DateTime? fchServHasta;
@override final  DateTime? fchVtoPago;
 final  List<IvaItem> _iva;
@override@JsonKey() List<IvaItem> get iva {
  if (_iva is EqualUnmodifiableListView) return _iva;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_iva);
}


/// Create a copy of InvoiceData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceDataCopyWith<_InvoiceData> get copyWith => __$InvoiceDataCopyWithImpl<_InvoiceData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoiceDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceData&&(identical(other.puntoVenta, puntoVenta) || other.puntoVenta == puntoVenta)&&(identical(other.cbteTipo, cbteTipo) || other.cbteTipo == cbteTipo)&&(identical(other.concepto, concepto) || other.concepto == concepto)&&(identical(other.docTipo, docTipo) || other.docTipo == docTipo)&&(identical(other.docNro, docNro) || other.docNro == docNro)&&(identical(other.impTotal, impTotal) || other.impTotal == impTotal)&&(identical(other.impNeto, impNeto) || other.impNeto == impNeto)&&(identical(other.impIva, impIva) || other.impIva == impIva)&&(identical(other.impTotConc, impTotConc) || other.impTotConc == impTotConc)&&(identical(other.impOpEx, impOpEx) || other.impOpEx == impOpEx)&&(identical(other.impTrib, impTrib) || other.impTrib == impTrib)&&(identical(other.monId, monId) || other.monId == monId)&&(identical(other.monCotiz, monCotiz) || other.monCotiz == monCotiz)&&(identical(other.fchServDesde, fchServDesde) || other.fchServDesde == fchServDesde)&&(identical(other.fchServHasta, fchServHasta) || other.fchServHasta == fchServHasta)&&(identical(other.fchVtoPago, fchVtoPago) || other.fchVtoPago == fchVtoPago)&&const DeepCollectionEquality().equals(other._iva, _iva));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,puntoVenta,cbteTipo,concepto,docTipo,docNro,impTotal,impNeto,impIva,impTotConc,impOpEx,impTrib,monId,monCotiz,fchServDesde,fchServHasta,fchVtoPago,const DeepCollectionEquality().hash(_iva));

@override
String toString() {
  return 'InvoiceData(puntoVenta: $puntoVenta, cbteTipo: $cbteTipo, concepto: $concepto, docTipo: $docTipo, docNro: $docNro, impTotal: $impTotal, impNeto: $impNeto, impIva: $impIva, impTotConc: $impTotConc, impOpEx: $impOpEx, impTrib: $impTrib, monId: $monId, monCotiz: $monCotiz, fchServDesde: $fchServDesde, fchServHasta: $fchServHasta, fchVtoPago: $fchVtoPago, iva: $iva)';
}


}

/// @nodoc
abstract mixin class _$InvoiceDataCopyWith<$Res> implements $InvoiceDataCopyWith<$Res> {
  factory _$InvoiceDataCopyWith(_InvoiceData value, $Res Function(_InvoiceData) _then) = __$InvoiceDataCopyWithImpl;
@override @useResult
$Res call({
 int puntoVenta,@JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson) CbteTipo cbteTipo,@JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson) Concepto concepto,@JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson) DocTipo docTipo, String docNro, double impTotal, double impNeto, double impIva, double impTotConc, double impOpEx, double impTrib, String monId, double monCotiz, DateTime? fchServDesde, DateTime? fchServHasta, DateTime? fchVtoPago, List<IvaItem> iva
});




}
/// @nodoc
class __$InvoiceDataCopyWithImpl<$Res>
    implements _$InvoiceDataCopyWith<$Res> {
  __$InvoiceDataCopyWithImpl(this._self, this._then);

  final _InvoiceData _self;
  final $Res Function(_InvoiceData) _then;

/// Create a copy of InvoiceData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? puntoVenta = null,Object? cbteTipo = null,Object? concepto = null,Object? docTipo = null,Object? docNro = null,Object? impTotal = null,Object? impNeto = null,Object? impIva = null,Object? impTotConc = null,Object? impOpEx = null,Object? impTrib = null,Object? monId = null,Object? monCotiz = null,Object? fchServDesde = freezed,Object? fchServHasta = freezed,Object? fchVtoPago = freezed,Object? iva = null,}) {
  return _then(_InvoiceData(
puntoVenta: null == puntoVenta ? _self.puntoVenta : puntoVenta // ignore: cast_nullable_to_non_nullable
as int,cbteTipo: null == cbteTipo ? _self.cbteTipo : cbteTipo // ignore: cast_nullable_to_non_nullable
as CbteTipo,concepto: null == concepto ? _self.concepto : concepto // ignore: cast_nullable_to_non_nullable
as Concepto,docTipo: null == docTipo ? _self.docTipo : docTipo // ignore: cast_nullable_to_non_nullable
as DocTipo,docNro: null == docNro ? _self.docNro : docNro // ignore: cast_nullable_to_non_nullable
as String,impTotal: null == impTotal ? _self.impTotal : impTotal // ignore: cast_nullable_to_non_nullable
as double,impNeto: null == impNeto ? _self.impNeto : impNeto // ignore: cast_nullable_to_non_nullable
as double,impIva: null == impIva ? _self.impIva : impIva // ignore: cast_nullable_to_non_nullable
as double,impTotConc: null == impTotConc ? _self.impTotConc : impTotConc // ignore: cast_nullable_to_non_nullable
as double,impOpEx: null == impOpEx ? _self.impOpEx : impOpEx // ignore: cast_nullable_to_non_nullable
as double,impTrib: null == impTrib ? _self.impTrib : impTrib // ignore: cast_nullable_to_non_nullable
as double,monId: null == monId ? _self.monId : monId // ignore: cast_nullable_to_non_nullable
as String,monCotiz: null == monCotiz ? _self.monCotiz : monCotiz // ignore: cast_nullable_to_non_nullable
as double,fchServDesde: freezed == fchServDesde ? _self.fchServDesde : fchServDesde // ignore: cast_nullable_to_non_nullable
as DateTime?,fchServHasta: freezed == fchServHasta ? _self.fchServHasta : fchServHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,fchVtoPago: freezed == fchVtoPago ? _self.fchVtoPago : fchVtoPago // ignore: cast_nullable_to_non_nullable
as DateTime?,iva: null == iva ? _self._iva : iva // ignore: cast_nullable_to_non_nullable
as List<IvaItem>,
  ));
}


}

// dart format on
