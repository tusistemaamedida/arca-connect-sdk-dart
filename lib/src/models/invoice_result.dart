import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_result.freezed.dart';

/// Impuesto/tributo incluido en la respuesta del comprobante emitido.
class InvoiceTax {
  const InvoiceTax({
    required this.id,
    required this.type,
    required this.taxId,
    required this.baseImp,
    required this.importe,
    this.description,
  });

  /// Identificador único (ULID).
  final String id;

  /// Tipo: `"iva"` o `"tributo"`.
  final String type;

  /// Código de alícuota o tributo según ARCA.
  final int taxId;

  final double baseImp;
  final double importe;
  final String? description;

  factory InvoiceTax.fromJson(Map<String, dynamic> json) => InvoiceTax(
        id: json['id'] as String? ?? '',
        type: json['type'] as String? ?? '',
        taxId: (json['tax_id'] as num?)?.toInt() ?? 0,
        baseImp: (json['base_imp'] as num?)?.toDouble() ?? 0,
        importe: (json['importe'] as num?)?.toDouble() ?? 0,
        description: json['description'] as String?,
      );
}

/// Resultado de la emisión de un comprobante con CAE asignado por ARCA.
@freezed
abstract class InvoiceResult with _$InvoiceResult {
  const factory InvoiceResult({
    /// Identificador único del comprobante en el sistema (ULID).
    String? id,

    /// `true` si ARCA aprobó el comprobante (`resultado == "A"`).
    required bool approved,

    /// Código de Autorización Electrónico asignado por ARCA.
    String? cae,

    /// Fecha de vencimiento del CAE (YYYY-MM-DD).
    String? caeVto,

    /// URL del QR oficial AFIP para validación del comprobante.
    String? qr,

    /// Número de comprobante asignado por ARCA.
    required int cbteNumero,

    /// Resultado devuelto por ARCA: `"A"` (aprobado), `"R"` (rechazado), `"P"` (parcial).
    required String resultado,

    /// Fecha del comprobante (YYYY-MM-DD).
    String? cbteDate,

    /// CUIT del emisor.
    String? cuitEmisor,

    /// Ambiente: `"development"` o `"production"`.
    String? environment,

    /// Punto de venta.
    int? puntoVenta,

    /// Código de tipo de comprobante.
    int? cbteTipo,

    /// Nombre del tipo de comprobante.
    String? cbteTipoNombre,

    /// Código de concepto (1=Productos, 2=Servicios, 3=Ambos).
    int? concepto,

    /// Código de tipo de documento del receptor.
    int? docTipo,

    /// Número de documento del receptor.
    String? docNro,

    /// ID de condición IVA del receptor (RG 5616).
    int? condicionIvaReceptorId,

    /// Importe total.
    double? impTotal,

    /// Importe neto gravado.
    double? impNeto,

    /// Importe de IVA.
    double? impIva,

    /// Código de moneda (ej. `"PES"`).
    String? monId,

    /// Impuestos y alícuotas incluidos en el comprobante.
    @Default(<InvoiceTax>[]) List<InvoiceTax> taxes,

    /// Observaciones devueltas por ARCA.
    @Default(<String>[]) List<String> observaciones,

    /// Errores devueltos por ARCA.
    @Default(<String>[]) List<String> errores,

    /// Timestamp de creación (ISO 8601).
    String? createdAt,

    /// Timestamp de última actualización (ISO 8601).
    String? updatedAt,
  }) = _InvoiceResult;

  /// Parsea la respuesta HTTP (envuelve en `data` o mapa plano).
  factory InvoiceResult.fromApiJson(Map<String, dynamic> json) {
    final raw = json['data'] ?? json;
    final data = Map<String, dynamic>.from(raw as Map);

    final taxesRaw = data['taxes'];
    final taxes = taxesRaw is List
        ? taxesRaw
            .map((e) => InvoiceTax.fromJson(Map<String, dynamic>.from(e as Map)))
            .toList()
        : <InvoiceTax>[];

    return InvoiceResult(
      id: data['id'] as String?,
      approved: data['is_approved'] as bool? ?? data['resultado'] == 'A',
      cae: data['cae'] as String?,
      caeVto: data['cae_vto'] as String?,
      qr: data['qr'] as String?,
      cbteNumero: (data['cbte_numero'] as num?)?.toInt() ?? 0,
      resultado: data['resultado'] as String? ?? 'R',
      cbteDate: data['cbte_fecha'] as String?,
      cuitEmisor: data['cuit_emisor'] as String?,
      environment: data['environment'] as String?,
      puntoVenta: (data['punto_venta'] as num?)?.toInt(),
      cbteTipo: (data['cbte_tipo'] as num?)?.toInt(),
      cbteTipoNombre: data['cbte_tipo_nombre'] as String?,
      concepto: (data['concepto'] as num?)?.toInt(),
      docTipo: (data['doc_tipo'] as num?)?.toInt(),
      docNro: data['doc_nro'] as String?,
      condicionIvaReceptorId: (data['condicion_iva_receptor_id'] as num?)?.toInt(),
      impTotal: (data['imp_total'] as num?)?.toDouble(),
      impNeto: (data['imp_neto'] as num?)?.toDouble(),
      impIva: (data['imp_iva'] as num?)?.toDouble(),
      monId: data['mon_id'] as String?,
      taxes: taxes,
      observaciones: List<String>.from(data['observaciones'] ?? []),
      errores: List<String>.from(data['errores'] ?? []),
      createdAt: data['created_at'] as String?,
      updatedAt: data['updated_at'] as String?,
    );
  }
}
