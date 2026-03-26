import 'package:dio/dio.dart';

import '../api_client.dart';
import '../models/arca_health.dart';

/// Servicio para obtener parámetros y tablas de referencia desde ARCA Connect.
class ParamsService {
  /// Crea el servicio con el [client] HTTP configurado.
  ParamsService(this._client);

  final ArcaApiClient _client;

  /// Estado de los servicios ARCA.
  ///
  /// Acepta respuestas HTTP 200 (operativo) y 503 (degradado) con el mismo
  /// cuerpo JSON (`data.status`, `data.services`, etc.).
  Future<ArcaHealth> healthCheck() async {
    final response = await _client.get(
      '/arca/health',
      options: Options(
        validateStatus: (int? status) =>
            status != null && (status == 200 || status == 503),
      ),
    );
    final data = response['data'] ?? response;
    return ArcaHealth.fromApiData(Map<String, dynamic>.from(data as Map));
  }

  /// Tipos de comprobante disponibles.
  Future<List<Map<String, dynamic>>> getCbteTipos() async {
    final response = await _client.get('/arca/params/cbte-tipos');
    final raw = response['data'] ?? <dynamic>[];
    if (raw is! List<dynamic>) {
      return <Map<String, dynamic>>[];
    }
    return raw.map((dynamic e) => Map<String, dynamic>.from(e as Map)).toList();
  }

  /// Alícuotas IVA.
  Future<List<Map<String, dynamic>>> getIvaTipos() async {
    final response = await _client.get('/arca/params/iva-tipos');
    final raw = response['data'] ?? <dynamic>[];
    if (raw is! List<dynamic>) {
      return <Map<String, dynamic>>[];
    }
    return raw.map((dynamic e) => Map<String, dynamic>.from(e as Map)).toList();
  }

  /// Monedas disponibles.
  Future<List<Map<String, dynamic>>> getMonedas() async {
    final response = await _client.get('/arca/params/monedas');
    final raw = response['data'] ?? <dynamic>[];
    if (raw is! List<dynamic>) {
      return <Map<String, dynamic>>[];
    }
    return raw.map((dynamic e) => Map<String, dynamic>.from(e as Map)).toList();
  }

  /// Cotización de una moneda.
  Future<double> getCotizacion(String monId) async {
    final response = await _client.get(
      '/arca/params/cotizacion',
      queryParams: <String, dynamic>{'mon_id': monId},
    );
    final data = response['data'];
    if (data is Map<String, dynamic>) {
      final c = data['cotizacion'];
      return (c as num?)?.toDouble() ?? 1;
    }
    if (data is Map) {
      final c = data['cotizacion'];
      return (c as num?)?.toDouble() ?? 1;
    }
    return 1;
  }
}
