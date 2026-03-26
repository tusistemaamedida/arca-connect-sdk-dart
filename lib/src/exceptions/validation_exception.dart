import 'arca_exception.dart';

/// Error de validación (configuración local o respuesta 422 de la API).
class ArcaValidationException extends ArcaException {
  /// Crea una excepción de validación con [message] y [errors] opcional del servidor.
  ArcaValidationException(super.message, {this.errors});

  /// Detalle de errores de validación (p. ej. mapa o lista devuelta por la API).
  final dynamic errors;
}
