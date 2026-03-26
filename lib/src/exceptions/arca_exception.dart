/// Excepción base para errores devueltos por el SDK o la API ARCA Connect.
class ArcaException implements Exception {
  /// Crea una excepción ARCA con [message] y opcionalmente [code].
  ArcaException(this.message, {this.code});

  /// Mensaje descriptivo del error.
  final String message;

  /// Código de error de negocio o HTTP, si aplica.
  final String? code;

  @override
  String toString() => 'ArcaException: $message';
}
