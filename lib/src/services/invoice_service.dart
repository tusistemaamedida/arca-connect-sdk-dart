import '../api_client.dart';
import '../config.dart';
import '../enums/cbte_tipo.dart';
import '../enums/doc_tipo.dart';
import '../exceptions/validation_exception.dart';
import '../models/invoice_data.dart';
import '../models/invoice_result.dart';

/// Servicio HTTP para emisión y consulta de comprobantes electrónicos.
class InvoiceService {
  /// Crea el servicio con [client] y [config].
  InvoiceService(this._client, this._config);

  final ArcaApiClient _client;
  final ArcaConnectConfig _config;

  /// Emite un comprobante y obtiene CAE.
  /// Valida localmente antes de enviar.
  Future<InvoiceResult> create(InvoiceData data) async {
    _validate(data);

    final body = <String, dynamic>{
      ...data.toApiMap(),
      'cuit_emisor': _config.cuit,
      'environment': _config.environment.name,
    };

    final response = await _client.post('/arca/invoices', data: body);
    return InvoiceResult.fromApiJson(response);
  }

  /// Último número de comprobante autorizado.
  Future<int> getLastNumber(int puntoVenta, CbteTipo cbteTipo) async {
    final response = await _client.get(
      '/arca/invoices/last-number',
      queryParams: <String, dynamic>{
        'punto_venta': puntoVenta,
        'cbte_tipo': cbteTipo.code,
        'cuit_emisor': _config.cuit,
        'environment': _config.environment.name,
      },
    );
    final data = response['data'];
    if (data is Map<String, dynamic>) {
      return (data['cbte_nro'] as num?)?.toInt() ?? 0;
    }
    if (data is Map) {
      return (data['cbte_nro'] as num?)?.toInt() ?? 0;
    }
    return 0;
  }

  /// Consulta un comprobante emitido.
  Future<InvoiceResult> get(
    int puntoVenta,
    CbteTipo cbteTipo,
    int cbteNro,
  ) async {
    final response = await _client.get(
      '/arca/invoices',
      queryParams: <String, dynamic>{
        'punto_venta': puntoVenta,
        'cbte_tipo': cbteTipo.code,
        'cbte_nro': cbteNro,
        'cuit_emisor': _config.cuit,
      },
    );
    return InvoiceResult.fromApiJson(response);
  }

  /// Lista comprobantes emitidos con filtros opcionales.
  Future<List<InvoiceResult>> list({
    int? puntoVenta,
    CbteTipo? cbteTipo,
    DateTime? desde,
    DateTime? hasta,
    int page = 1,
    int perPage = 20,
  }) async {
    final response = await _client.get(
      '/arca/invoices',
      queryParams: <String, dynamic>{
        if (puntoVenta != null) 'punto_venta': puntoVenta,
        if (cbteTipo != null) 'cbte_tipo': cbteTipo.code,
        if (desde != null) 'desde': desde.toIso8601String(),
        if (hasta != null) 'hasta': hasta.toIso8601String(),
        'page': page,
        'per_page': perPage,
      },
    );
    final raw = response['data'];
    if (raw is! List<dynamic>) {
      return <InvoiceResult>[];
    }
    return raw
        .map(
          (dynamic e) =>
              InvoiceResult.fromApiJson(Map<String, dynamic>.from(e as Map)),
        )
        .toList();
  }

  /// Validación local antes de enviar.
  void _validate(InvoiceData data) {
    final sum = data.impNeto +
        data.impIva +
        data.impTotConc +
        data.impOpEx +
        data.impTrib;
    if ((data.impTotal - sum).abs() > 0.01) {
      throw ArcaValidationException(
        'impTotal (${data.impTotal}) no coincide con la suma ($sum)',
      );
    }

    if (data.concepto.requiresServiceDates) {
      if (data.fchServDesde == null ||
          data.fchServHasta == null ||
          data.fchVtoPago == null) {
        throw ArcaValidationException(
          'Concepto ${data.concepto.label} requiere fechas de servicio',
        );
      }
    }

    if (data.cbteTipo.isTypeA && data.docTipo != DocTipo.cuit) {
      throw ArcaValidationException(
        'Comprobantes tipo A requieren docTipo CUIT',
      );
    }
  }
}
