// Freezed coloca @JsonSerializable/@JsonKey en factories; el analizador lo acepta al generar código.
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/alicuota_iva.dart';
import '../enums/cbte_tipo.dart';
import '../enums/concepto.dart';
import '../enums/doc_tipo.dart';

part 'invoice_data.freezed.dart';
part 'invoice_data.g.dart';

/// Línea de IVA desglosada para el comprobante.
@freezed
abstract class IvaItem with _$IvaItem {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory IvaItem({
    @JsonKey(fromJson: _alicuotaFromJson, toJson: _alicuotaToJson)
    required AlicuotaIva id,
    required double baseImp,
    required double importe,
  }) = _IvaItem;

  factory IvaItem.fromJson(Map<String, dynamic> json) =>
      _$IvaItemFromJson(json);
}

/// Payload de entrada para emitir un comprobante electrónico ARCA.
@freezed
abstract class InvoiceData with _$InvoiceData {
  const InvoiceData._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory InvoiceData({
    required int puntoVenta,
    @JsonKey(fromJson: _cbteTipoFromJson, toJson: _cbteTipoToJson)
    required CbteTipo cbteTipo,
    @JsonKey(fromJson: _conceptoFromJson, toJson: _conceptoToJson)
    required Concepto concepto,
    @JsonKey(fromJson: _docTipoFromJson, toJson: _docTipoToJson)
    required DocTipo docTipo,
    required String docNro,
    required double impTotal,
    required double impNeto,
    required double impIva,
    @Default(0) double impTotConc,
    @Default(0) double impOpEx,
    @Default(0) double impTrib,
    @Default('PES') String monId,
    @Default(1) double monCotiz,
    DateTime? fchServDesde,
    DateTime? fchServHasta,
    DateTime? fchVtoPago,
    @Default(<IvaItem>[]) List<IvaItem> iva,
  }) = _InvoiceData;

  factory InvoiceData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDataFromJson(json);

  /// Convierte a [Map] para enviar a la API (snake_case).
  Map<String, dynamic> toApiMap() => {
        'punto_venta': puntoVenta,
        'cbte_tipo': cbteTipo.code,
        'concepto': concepto.code,
        'doc_tipo': docTipo.code,
        'doc_nro': docNro,
        'imp_total': impTotal,
        'imp_neto': impNeto,
        'imp_iva': impIva,
        'imp_tot_conc': impTotConc,
        'imp_op_ex': impOpEx,
        'imp_trib': impTrib,
        'mon_id': monId,
        'mon_cotiz': monCotiz,
        if (fchServDesde != null) 'fch_serv_desde': _formatDate(fchServDesde!),
        if (fchServHasta != null) 'fch_serv_hasta': _formatDate(fchServHasta!),
        if (fchVtoPago != null) 'fch_vto_pago': _formatDate(fchVtoPago!),
        'iva': iva
            .map(
              (i) => <String, dynamic>{
                'id': i.id.code,
                'base_imp': i.baseImp,
                'importe': i.importe,
              },
            )
            .toList(),
      };

  String _formatDate(DateTime d) =>
      '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
}

AlicuotaIva _alicuotaFromJson(Object? json) {
  final code = json as int;
  return AlicuotaIva.values.firstWhere((e) => e.code == code);
}

Object? _alicuotaToJson(AlicuotaIva a) => a.code;

CbteTipo _cbteTipoFromJson(Object? json) => CbteTipo.fromCode(json as int);

Object? _cbteTipoToJson(CbteTipo t) => t.code;

Concepto _conceptoFromJson(Object? json) {
  final code = json as int;
  return Concepto.values.firstWhere((e) => e.code == code);
}

Object? _conceptoToJson(Concepto c) => c.code;

DocTipo _docTipoFromJson(Object? json) {
  final code = json as int;
  return DocTipo.values.firstWhere((e) => e.code == code);
}

Object? _docTipoToJson(DocTipo d) => d.code;
