import 'enums/environment.dart';
import 'exceptions/validation_exception.dart';

/// Configuración requerida para inicializar el cliente ARCA Connect.
class ArcaConnectConfig {
  /// Crea la configuración con validaciones de [apiKey], [cuit] y [environment].
  ArcaConnectConfig({
    required this.apiKey,
    required this.cuit,
    required this.environment,
    this.baseUrl,
    this.timeout = const Duration(seconds: 30),
  }) {
    if (apiKey.isEmpty) {
      throw ArcaValidationException('apiKey no puede estar vacío');
    }
    if (!RegExp(r'^\d{11}$').hasMatch(cuit)) {
      throw ArcaValidationException('CUIT debe tener 11 dígitos');
    }
    if (!apiKey.startsWith('arca_sk_')) {
      throw ArcaValidationException(
        'apiKey debe comenzar con "arca_sk_test_" o "arca_sk_live_"',
      );
    }
  }

  /// Credencial de API ARCA Connect.
  final String apiKey;

  /// CUIT del contribuyente (11 dígitos, sin guiones).
  final String cuit;

  /// Entorno de ejecución.
  final ArcaEnvironment environment;

  /// URL base explícita; si es null se usa [ArcaEnvironment.baseUrl].
  final String? baseUrl;

  /// Timeouts de conexión y recepción del cliente HTTP.
  final Duration timeout;

  /// URL efectiva para las peticiones HTTP.
  String get effectiveBaseUrl => baseUrl ?? environment.baseUrl;
}
