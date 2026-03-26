import 'arca_exception.dart';

/// Error al emitir o consultar comprobantes electrónicos (incluye fallos de ARCA).
class ArcaInvoiceException extends ArcaException {
  /// Crea una excepción de facturación con [message] y opcionalmente [code].
  ArcaInvoiceException(super.message, {super.code});
}
