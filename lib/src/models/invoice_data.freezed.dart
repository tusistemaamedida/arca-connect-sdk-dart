// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IvaItem _$IvaItemFromJson(Map<String, dynamic> json) {
  return _IvaItem.fromJson(json);
}

/// @nodoc
mixin _$IvaItem {
  @JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson)
  AlicuotaIva get id => throw _privateConstructorUsedError;
  double get baseImp => throw _privateConstructorUsedError;
  double get importe => throw _privateConstructorUsedError;

  /// Serializes this IvaItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IvaItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IvaItemCopyWith<IvaItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IvaItemCopyWith<$Res> {
  factory $IvaItemCopyWith(IvaItem value, $Res Function(IvaItem) then) =
      _$IvaItemCopyWithImpl<$Res, IvaItem>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson)
      AlicuotaIva id,
      double baseImp,
      double importe});
}

/// @nodoc
class _$IvaItemCopyWithImpl<$Res, $Val extends IvaItem>
    implements $IvaItemCopyWith<$Res> {
  _$IvaItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IvaItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? baseImp = null,
    Object? importe = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AlicuotaIva,
      baseImp: null == baseImp
          ? _value.baseImp
          : baseImp // ignore: cast_nullable_to_non_nullable
              as double,
      importe: null == importe
          ? _value.importe
          : importe // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IvaItemImplCopyWith<$Res> implements $IvaItemCopyWith<$Res> {
  factory _$$IvaItemImplCopyWith(
          _$IvaItemImpl value, $Res Function(_$IvaItemImpl) then) =
      __$$IvaItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson)
      AlicuotaIva id,
      double baseImp,
      double importe});
}

/// @nodoc
class __$$IvaItemImplCopyWithImpl<$Res>
    extends _$IvaItemCopyWithImpl<$Res, _$IvaItemImpl>
    implements _$$IvaItemImplCopyWith<$Res> {
  __$$IvaItemImplCopyWithImpl(
      _$IvaItemImpl _value, $Res Function(_$IvaItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of IvaItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? baseImp = null,
    Object? importe = null,
  }) {
    return _then(_$IvaItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AlicuotaIva,
      baseImp: null == baseImp
          ? _value.baseImp
          : baseImp // ignore: cast_nullable_to_non_nullable
              as double,
      importe: null == importe
          ? _value.importe
          : importe // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$IvaItemImpl implements _IvaItem {
  const _$IvaItemImpl(
      {@JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson)
      required this.id,
      required this.baseImp,
      required this.importe});

  factory _$IvaItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$IvaItemImplFromJson(json);

  @override
  @JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson)
  final AlicuotaIva id;
  @override
  final double baseImp;
  @override
  final double importe;

  @override
  String toString() {
    return 'IvaItem(id: $id, baseImp: $baseImp, importe: $importe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IvaItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.baseImp, baseImp) || other.baseImp == baseImp) &&
            (identical(other.importe, importe) || other.importe == importe));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, baseImp, importe);

  /// Create a copy of IvaItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IvaItemImplCopyWith<_$IvaItemImpl> get copyWith =>
      __$$IvaItemImplCopyWithImpl<_$IvaItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IvaItemImplToJson(
      this,
    );
  }
}

abstract class _IvaItem implements IvaItem {
  const factory _IvaItem(
      {@JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson)
      required final AlicuotaIva id,
      required final double baseImp,
      required final double importe}) = _$IvaItemImpl;

  factory _IvaItem.fromJson(Map<String, dynamic> json) = _$IvaItemImpl.fromJson;

  @override
  @JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson)
  AlicuotaIva get id;
  @override
  double get baseImp;
  @override
  double get importe;

  /// Create a copy of IvaItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IvaItemImplCopyWith<_$IvaItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceData _$InvoiceDataFromJson(Map<String, dynamic> json) {
  return _InvoiceData.fromJson(json);
}

/// @nodoc
mixin _$InvoiceData {
  int get puntoVenta => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson)
  CbteTipo get cbteTipo => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson)
  Concepto get concepto => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson)
  DocTipo get docTipo => throw _privateConstructorUsedError;
  String get docNro => throw _privateConstructorUsedError;
  double get impTotal => throw _privateConstructorUsedError;
  double get impNeto => throw _privateConstructorUsedError;
  double get impIva => throw _privateConstructorUsedError;
  double get impTotConc => throw _privateConstructorUsedError;
  double get impOpEx => throw _privateConstructorUsedError;
  double get impTrib => throw _privateConstructorUsedError;
  String get monId => throw _privateConstructorUsedError;
  double get monCotiz => throw _privateConstructorUsedError;
  DateTime? get fchServDesde => throw _privateConstructorUsedError;
  DateTime? get fchServHasta => throw _privateConstructorUsedError;
  DateTime? get fchVtoPago => throw _privateConstructorUsedError;
  List<IvaItem> get iva => throw _privateConstructorUsedError;

  /// Serializes this InvoiceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceDataCopyWith<InvoiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDataCopyWith<$Res> {
  factory $InvoiceDataCopyWith(
          InvoiceData value, $Res Function(InvoiceData) then) =
      _$InvoiceDataCopyWithImpl<$Res, InvoiceData>;
  @useResult
  $Res call(
      {int puntoVenta,
      @JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson)
      CbteTipo cbteTipo,
      @JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson)
      Concepto concepto,
      @JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson)
      DocTipo docTipo,
      String docNro,
      double impTotal,
      double impNeto,
      double impIva,
      double impTotConc,
      double impOpEx,
      double impTrib,
      String monId,
      double monCotiz,
      DateTime? fchServDesde,
      DateTime? fchServHasta,
      DateTime? fchVtoPago,
      List<IvaItem> iva});
}

/// @nodoc
class _$InvoiceDataCopyWithImpl<$Res, $Val extends InvoiceData>
    implements $InvoiceDataCopyWith<$Res> {
  _$InvoiceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? puntoVenta = null,
    Object? cbteTipo = null,
    Object? concepto = null,
    Object? docTipo = null,
    Object? docNro = null,
    Object? impTotal = null,
    Object? impNeto = null,
    Object? impIva = null,
    Object? impTotConc = null,
    Object? impOpEx = null,
    Object? impTrib = null,
    Object? monId = null,
    Object? monCotiz = null,
    Object? fchServDesde = freezed,
    Object? fchServHasta = freezed,
    Object? fchVtoPago = freezed,
    Object? iva = null,
  }) {
    return _then(_value.copyWith(
      puntoVenta: null == puntoVenta
          ? _value.puntoVenta
          : puntoVenta // ignore: cast_nullable_to_non_nullable
              as int,
      cbteTipo: null == cbteTipo
          ? _value.cbteTipo
          : cbteTipo // ignore: cast_nullable_to_non_nullable
              as CbteTipo,
      concepto: null == concepto
          ? _value.concepto
          : concepto // ignore: cast_nullable_to_non_nullable
              as Concepto,
      docTipo: null == docTipo
          ? _value.docTipo
          : docTipo // ignore: cast_nullable_to_non_nullable
              as DocTipo,
      docNro: null == docNro
          ? _value.docNro
          : docNro // ignore: cast_nullable_to_non_nullable
              as String,
      impTotal: null == impTotal
          ? _value.impTotal
          : impTotal // ignore: cast_nullable_to_non_nullable
              as double,
      impNeto: null == impNeto
          ? _value.impNeto
          : impNeto // ignore: cast_nullable_to_non_nullable
              as double,
      impIva: null == impIva
          ? _value.impIva
          : impIva // ignore: cast_nullable_to_non_nullable
              as double,
      impTotConc: null == impTotConc
          ? _value.impTotConc
          : impTotConc // ignore: cast_nullable_to_non_nullable
              as double,
      impOpEx: null == impOpEx
          ? _value.impOpEx
          : impOpEx // ignore: cast_nullable_to_non_nullable
              as double,
      impTrib: null == impTrib
          ? _value.impTrib
          : impTrib // ignore: cast_nullable_to_non_nullable
              as double,
      monId: null == monId
          ? _value.monId
          : monId // ignore: cast_nullable_to_non_nullable
              as String,
      monCotiz: null == monCotiz
          ? _value.monCotiz
          : monCotiz // ignore: cast_nullable_to_non_nullable
              as double,
      fchServDesde: freezed == fchServDesde
          ? _value.fchServDesde
          : fchServDesde // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fchServHasta: freezed == fchServHasta
          ? _value.fchServHasta
          : fchServHasta // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fchVtoPago: freezed == fchVtoPago
          ? _value.fchVtoPago
          : fchVtoPago // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iva: null == iva
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as List<IvaItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceDataImplCopyWith<$Res>
    implements $InvoiceDataCopyWith<$Res> {
  factory _$$InvoiceDataImplCopyWith(
          _$InvoiceDataImpl value, $Res Function(_$InvoiceDataImpl) then) =
      __$$InvoiceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int puntoVenta,
      @JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson)
      CbteTipo cbteTipo,
      @JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson)
      Concepto concepto,
      @JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson)
      DocTipo docTipo,
      String docNro,
      double impTotal,
      double impNeto,
      double impIva,
      double impTotConc,
      double impOpEx,
      double impTrib,
      String monId,
      double monCotiz,
      DateTime? fchServDesde,
      DateTime? fchServHasta,
      DateTime? fchVtoPago,
      List<IvaItem> iva});
}

/// @nodoc
class __$$InvoiceDataImplCopyWithImpl<$Res>
    extends _$InvoiceDataCopyWithImpl<$Res, _$InvoiceDataImpl>
    implements _$$InvoiceDataImplCopyWith<$Res> {
  __$$InvoiceDataImplCopyWithImpl(
      _$InvoiceDataImpl _value, $Res Function(_$InvoiceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? puntoVenta = null,
    Object? cbteTipo = null,
    Object? concepto = null,
    Object? docTipo = null,
    Object? docNro = null,
    Object? impTotal = null,
    Object? impNeto = null,
    Object? impIva = null,
    Object? impTotConc = null,
    Object? impOpEx = null,
    Object? impTrib = null,
    Object? monId = null,
    Object? monCotiz = null,
    Object? fchServDesde = freezed,
    Object? fchServHasta = freezed,
    Object? fchVtoPago = freezed,
    Object? iva = null,
  }) {
    return _then(_$InvoiceDataImpl(
      puntoVenta: null == puntoVenta
          ? _value.puntoVenta
          : puntoVenta // ignore: cast_nullable_to_non_nullable
              as int,
      cbteTipo: null == cbteTipo
          ? _value.cbteTipo
          : cbteTipo // ignore: cast_nullable_to_non_nullable
              as CbteTipo,
      concepto: null == concepto
          ? _value.concepto
          : concepto // ignore: cast_nullable_to_non_nullable
              as Concepto,
      docTipo: null == docTipo
          ? _value.docTipo
          : docTipo // ignore: cast_nullable_to_non_nullable
              as DocTipo,
      docNro: null == docNro
          ? _value.docNro
          : docNro // ignore: cast_nullable_to_non_nullable
              as String,
      impTotal: null == impTotal
          ? _value.impTotal
          : impTotal // ignore: cast_nullable_to_non_nullable
              as double,
      impNeto: null == impNeto
          ? _value.impNeto
          : impNeto // ignore: cast_nullable_to_non_nullable
              as double,
      impIva: null == impIva
          ? _value.impIva
          : impIva // ignore: cast_nullable_to_non_nullable
              as double,
      impTotConc: null == impTotConc
          ? _value.impTotConc
          : impTotConc // ignore: cast_nullable_to_non_nullable
              as double,
      impOpEx: null == impOpEx
          ? _value.impOpEx
          : impOpEx // ignore: cast_nullable_to_non_nullable
              as double,
      impTrib: null == impTrib
          ? _value.impTrib
          : impTrib // ignore: cast_nullable_to_non_nullable
              as double,
      monId: null == monId
          ? _value.monId
          : monId // ignore: cast_nullable_to_non_nullable
              as String,
      monCotiz: null == monCotiz
          ? _value.monCotiz
          : monCotiz // ignore: cast_nullable_to_non_nullable
              as double,
      fchServDesde: freezed == fchServDesde
          ? _value.fchServDesde
          : fchServDesde // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fchServHasta: freezed == fchServHasta
          ? _value.fchServHasta
          : fchServHasta // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fchVtoPago: freezed == fchVtoPago
          ? _value.fchVtoPago
          : fchVtoPago // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iva: null == iva
          ? _value._iva
          : iva // ignore: cast_nullable_to_non_nullable
              as List<IvaItem>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$InvoiceDataImpl extends _InvoiceData {
  const _$InvoiceDataImpl(
      {required this.puntoVenta,
      @JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson)
      required this.cbteTipo,
      @JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson)
      required this.concepto,
      @JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson)
      required this.docTipo,
      required this.docNro,
      required this.impTotal,
      required this.impNeto,
      required this.impIva,
      this.impTotConc = 0,
      this.impOpEx = 0,
      this.impTrib = 0,
      this.monId = 'PES',
      this.monCotiz = 1,
      this.fchServDesde,
      this.fchServHasta,
      this.fchVtoPago,
      final List<IvaItem> iva = const <IvaItem>[]})
      : _iva = iva,
        super._();

  factory _$InvoiceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceDataImplFromJson(json);

  @override
  final int puntoVenta;
  @override
  @JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson)
  final CbteTipo cbteTipo;
  @override
  @JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson)
  final Concepto concepto;
  @override
  @JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson)
  final DocTipo docTipo;
  @override
  final String docNro;
  @override
  final double impTotal;
  @override
  final double impNeto;
  @override
  final double impIva;
  @override
  @JsonKey()
  final double impTotConc;
  @override
  @JsonKey()
  final double impOpEx;
  @override
  @JsonKey()
  final double impTrib;
  @override
  @JsonKey()
  final String monId;
  @override
  @JsonKey()
  final double monCotiz;
  @override
  final DateTime? fchServDesde;
  @override
  final DateTime? fchServHasta;
  @override
  final DateTime? fchVtoPago;
  final List<IvaItem> _iva;
  @override
  @JsonKey()
  List<IvaItem> get iva {
    if (_iva is EqualUnmodifiableListView) return _iva;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_iva);
  }

  @override
  String toString() {
    return 'InvoiceData(puntoVenta: $puntoVenta, cbteTipo: $cbteTipo, concepto: $concepto, docTipo: $docTipo, docNro: $docNro, impTotal: $impTotal, impNeto: $impNeto, impIva: $impIva, impTotConc: $impTotConc, impOpEx: $impOpEx, impTrib: $impTrib, monId: $monId, monCotiz: $monCotiz, fchServDesde: $fchServDesde, fchServHasta: $fchServHasta, fchVtoPago: $fchVtoPago, iva: $iva)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDataImpl &&
            (identical(other.puntoVenta, puntoVenta) ||
                other.puntoVenta == puntoVenta) &&
            (identical(other.cbteTipo, cbteTipo) ||
                other.cbteTipo == cbteTipo) &&
            (identical(other.concepto, concepto) ||
                other.concepto == concepto) &&
            (identical(other.docTipo, docTipo) || other.docTipo == docTipo) &&
            (identical(other.docNro, docNro) || other.docNro == docNro) &&
            (identical(other.impTotal, impTotal) ||
                other.impTotal == impTotal) &&
            (identical(other.impNeto, impNeto) || other.impNeto == impNeto) &&
            (identical(other.impIva, impIva) || other.impIva == impIva) &&
            (identical(other.impTotConc, impTotConc) ||
                other.impTotConc == impTotConc) &&
            (identical(other.impOpEx, impOpEx) || other.impOpEx == impOpEx) &&
            (identical(other.impTrib, impTrib) || other.impTrib == impTrib) &&
            (identical(other.monId, monId) || other.monId == monId) &&
            (identical(other.monCotiz, monCotiz) ||
                other.monCotiz == monCotiz) &&
            (identical(other.fchServDesde, fchServDesde) ||
                other.fchServDesde == fchServDesde) &&
            (identical(other.fchServHasta, fchServHasta) ||
                other.fchServHasta == fchServHasta) &&
            (identical(other.fchVtoPago, fchVtoPago) ||
                other.fchVtoPago == fchVtoPago) &&
            const DeepCollectionEquality().equals(other._iva, _iva));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      puntoVenta,
      cbteTipo,
      concepto,
      docTipo,
      docNro,
      impTotal,
      impNeto,
      impIva,
      impTotConc,
      impOpEx,
      impTrib,
      monId,
      monCotiz,
      fchServDesde,
      fchServHasta,
      fchVtoPago,
      const DeepCollectionEquality().hash(_iva));

  /// Create a copy of InvoiceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceDataImplCopyWith<_$InvoiceDataImpl> get copyWith =>
      __$$InvoiceDataImplCopyWithImpl<_$InvoiceDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceDataImplToJson(
      this,
    );
  }
}

abstract class _InvoiceData extends InvoiceData {
  const factory _InvoiceData(
      {required final int puntoVenta,
      @JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson)
      required final CbteTipo cbteTipo,
      @JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson)
      required final Concepto concepto,
      @JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson)
      required final DocTipo docTipo,
      required final String docNro,
      required final double impTotal,
      required final double impNeto,
      required final double impIva,
      final double impTotConc,
      final double impOpEx,
      final double impTrib,
      final String monId,
      final double monCotiz,
      final DateTime? fchServDesde,
      final DateTime? fchServHasta,
      final DateTime? fchVtoPago,
      final List<IvaItem> iva}) = _$InvoiceDataImpl;
  const _InvoiceData._() : super._();

  factory _InvoiceData.fromJson(Map<String, dynamic> json) =
      _$InvoiceDataImpl.fromJson;

  @override
  int get puntoVenta;
  @override
  @JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson)
  CbteTipo get cbteTipo;
  @override
  @JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson)
  Concepto get concepto;
  @override
  @JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson)
  DocTipo get docTipo;
  @override
  String get docNro;
  @override
  double get impTotal;
  @override
  double get impNeto;
  @override
  double get impIva;
  @override
  double get impTotConc;
  @override
  double get impOpEx;
  @override
  double get impTrib;
  @override
  String get monId;
  @override
  double get monCotiz;
  @override
  DateTime? get fchServDesde;
  @override
  DateTime? get fchServHasta;
  @override
  DateTime? get fchVtoPago;
  @override
  List<IvaItem> get iva;

  /// Create a copy of InvoiceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceDataImplCopyWith<_$InvoiceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
