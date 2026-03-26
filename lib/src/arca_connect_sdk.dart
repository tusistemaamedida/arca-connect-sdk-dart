import 'package:dio/dio.dart';

import 'api_client.dart';
import 'config.dart';
import 'enums/environment.dart';
import 'services/invoice_service.dart';
import 'services/params_service.dart';

/// Clase principal del SDK. Entry point para el desarrollador.
///
/// Uso:
/// ```dart
/// final arca = ArcaConnectSdk(
///   apiKey: 'arca_sk_test_xxx',
///   cuit: '20111111112',
///   environment: ArcaEnvironment.development,
/// );
///
/// final factura = await arca.invoices.create(InvoiceData(...));
/// ```
class ArcaConnectSdk {
  /// Crea el SDK con credenciales, entorno y opcionalmente [httpClient] para tests.
  ArcaConnectSdk({
    required String apiKey,
    required String cuit,
    required ArcaEnvironment environment,
    String? baseUrl,
    Duration timeout = const Duration(seconds: 30),
    Dio? httpClient,
  }) {
    config = ArcaConnectConfig(
      apiKey: apiKey,
      cuit: cuit,
      environment: environment,
      baseUrl: baseUrl,
      timeout: timeout,
    );

    _apiClient = ArcaApiClient(config, dio: httpClient);

    invoices = InvoiceService(_apiClient, config);
    params = ParamsService(_apiClient);
  }

  /// Configuración validada del SDK.
  late final ArcaConnectConfig config;

  late final ArcaApiClient _apiClient;

  /// Emisión y consulta de comprobantes.
  late final InvoiceService invoices;

  /// Parámetros, health check y tablas de referencia.
  late final ParamsService params;

  /// Verifica que la API Key y conexión sean válidas.
  Future<bool> testConnection() async {
    try {
      final health = await params.healthCheck();
      return health.isHealthy;
    } on Object {
      return false;
    }
  }

  /// Activa logging de requests/responses para debugging.
  void enableLogging({void Function(Object)? logPrint}) {
    _apiClient.enableLogging(logPrint: logPrint);
  }
}
