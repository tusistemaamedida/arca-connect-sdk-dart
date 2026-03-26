// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IvaItem _$IvaItemFromJson(Map<String, dynamic> json) => _IvaItem(
  id: _alicuotaFromJson(json['id']),
  baseImp: (json['base_imp'] as num).toDouble(),
  importe: (json['importe'] as num).toDouble(),
);

Map<String, dynamic> _$IvaItemToJson(_IvaItem instance) => <String, dynamic>{
  'id': _alicuotaToJson(instance.id),
  'base_imp': instance.baseImp,
  'importe': instance.importe,
};

_InvoiceData _$InvoiceDataFromJson(Map<String, dynamic> json) => _InvoiceData(
  puntoVenta: (json['punto_venta'] as num).toInt(),
  cbteTipo: _cbteTipoFromJson(json['cbte_tipo']),
  concepto: _conceptoFromJson(json['concepto']),
  docTipo: _docTipoFromJson(json['doc_tipo']),
  docNro: json['doc_nro'] as String,
  impTotal: (json['imp_total'] as num).toDouble(),
  impNeto: (json['imp_neto'] as num).toDouble(),
  impIva: (json['imp_iva'] as num).toDouble(),
  impTotConc: (json['imp_tot_conc'] as num?)?.toDouble() ?? 0,
  impOpEx: (json['imp_op_ex'] as num?)?.toDouble() ?? 0,
  impTrib: (json['imp_trib'] as num?)?.toDouble() ?? 0,
  monId: json['mon_id'] as String? ?? 'PES',
  monCotiz: (json['mon_cotiz'] as num?)?.toDouble() ?? 1,
  fchServDesde: json['fch_serv_desde'] == null
      ? null
      : DateTime.parse(json['fch_serv_desde'] as String),
  fchServHasta: json['fch_serv_hasta'] == null
      ? null
      : DateTime.parse(json['fch_serv_hasta'] as String),
  fchVtoPago: json['fch_vto_pago'] == null
      ? null
      : DateTime.parse(json['fch_vto_pago'] as String),
  iva:
      (json['iva'] as List<dynamic>?)
          ?.map((e) => IvaItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <IvaItem>[],
);

Map<String, dynamic> _$InvoiceDataToJson(_InvoiceData instance) =>
    <String, dynamic>{
      'punto_venta': instance.puntoVenta,
      'cbte_tipo': _cbteTipoToJson(instance.cbteTipo),
      'concepto': _conceptoToJson(instance.concepto),
      'doc_tipo': _docTipoToJson(instance.docTipo),
      'doc_nro': instance.docNro,
      'imp_total': instance.impTotal,
      'imp_neto': instance.impNeto,
      'imp_iva': instance.impIva,
      'imp_tot_conc': instance.impTotConc,
      'imp_op_ex': instance.impOpEx,
      'imp_trib': instance.impTrib,
      'mon_id': instance.monId,
      'mon_cotiz': instance.monCotiz,
      'fch_serv_desde': instance.fchServDesde?.toIso8601String(),
      'fch_serv_hasta': instance.fchServHasta?.toIso8601String(),
      'fch_vto_pago': instance.fchVtoPago?.toIso8601String(),
      'iva': instance.iva,
    };
