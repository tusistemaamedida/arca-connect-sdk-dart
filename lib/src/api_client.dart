import 'package:dio/dio.dart';

import 'config.dart';
import 'exceptions/auth_exception.dart';
import 'exceptions/arca_exception.dart';
import 'exceptions/invoice_exception.dart';
import 'exceptions/validation_exception.dart';

/// HTTP client que se comunica con la API REST de ARCA Connect.
/// Agrega headers de autenticación y maneja errores.
class ArcaApiClient {
  /// Crea el cliente con [config] y opcionalmente un [dio] inyectado (tests).
  ArcaApiClient(this.config, {Dio? dio}) {
    _dio = dio ??
        Dio(
          BaseOptions(
            baseUrl: config.effectiveBaseUrl,
            connectTimeout: config.timeout,
            receiveTimeout: config.timeout,
            headers: <String, dynamic>{
              'X-API-Key': config.apiKey,
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'X-CUIT': config.cuit,
              'X-Environment': config.environment.name,
            },
          ),
        );

    _dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (_) {},
      ),
    );
  }

  final ArcaConnectConfig config;
  late final Dio _dio;

  /// Cliente Dio subyacente (interceptors, tests).
  Dio get dio => _dio;

  /// GET request.
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        path,
        queryParameters: queryParams,
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  /// POST request.
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
  }) async {
    try {
      final response = await _dio.post<dynamic>(path, data: data);
      return _handleResponse(response);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  /// DELETE request.
  Future<void> delete(String path) async {
    try {
      await _dio.delete<dynamic>(path);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Map<String, dynamic> _handleResponse(Response<dynamic> response) {
    final data = response.data;
    if (data is Map<String, dynamic>) {
      return data;
    }
    throw ArcaException('Respuesta inesperada del servidor');
  }

  ArcaException _handleDioError(DioException e) {
    if (e.response != null) {
      final status = e.response!.statusCode ?? 0;
      final body = e.response!.data;
      final message =
          body is Map ? (body['message'] ?? 'Error').toString() : 'Error';
      final errors = body is Map ? body['errors'] : null;

      return switch (status) {
        401 => ArcaAuthException('API Key inválida o expirada'),
        422 => ArcaValidationException(message, errors: errors),
        429 => ArcaException(
            'Rate limit excedido. Intentá de nuevo en unos segundos.',
          ),
        502 => ArcaInvoiceException('Error de ARCA: $message'),
        _ => ArcaException('Error HTTP $status: $message'),
      };
    }

    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      return ArcaException('Timeout de conexión con el servidor');
    }

    return ArcaException('Error de conexión: ${e.message}');
  }

  /// Activa logging de requests/responses para debugging.
  void enableLogging({void Function(Object)? logPrint}) {
    _dio.interceptors.clear();
    _dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: logPrint ?? _defaultLogPrint,
      ),
    );
  }

  void _defaultLogPrint(Object object) {
    // ignore: avoid_print
    print(object);
  }
}
