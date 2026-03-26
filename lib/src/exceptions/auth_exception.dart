import 'arca_exception.dart';

/// Error de autenticación (API Key inválida o expirada).
class ArcaAuthException extends ArcaException {
  /// Crea una excepción de autenticación con [message].
  ArcaAuthException(super.message);
}
