import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_result.freezed.dart';

/// Resultado de la emisión de un comprobante con CAE asignado por ARCA.
@freezed
abstract class InvoiceResult with _$InvoiceResult {
  const factory InvoiceResult({
    required bool approved,
    String? cae,
    String? caeVto,
    required int cbteNumero,
    required String resultado,
    @Default(<String>[]) List<String> observaciones,
    @Default(<String>[]) List<String> errores,
  }) = _InvoiceResult;

  /// Parsea la respuesta HTTP (envuelve en `data` o mapa plano).
  factory InvoiceResult.fromApiJson(Map<String, dynamic> json) {
    final raw = json['data'] ?? json;
    final data = Map<String, dynamic>.from(raw as Map);
    return InvoiceResult(
      approved: data['resultado'] == 'A',
      cae: data['cae'] as String?,
      caeVto: data['cae_vto'] as String?,
      cbteNumero: (data['cbte_numero'] as num?)?.toInt() ?? 0,
      resultado: data['resultado'] as String? ?? 'R',
      observaciones: List<String>.from(data['observaciones'] ?? []),
      errores: List<String>.from(data['errores'] ?? []),
    );
  }
}
