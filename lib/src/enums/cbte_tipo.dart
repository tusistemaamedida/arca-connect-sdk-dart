/// Tipos de comprobante ARCA
enum CbteTipo {
  facturaA(1, 'Factura A'),
  notaDebitoA(2, 'Nota Débito A'),
  notaCreditoA(3, 'Nota Crédito A'),
  facturaB(6, 'Factura B'),
  notaDebitoB(7, 'Nota Débito B'),
  notaCreditoB(8, 'Nota Crédito B'),
  facturaC(11, 'Factura C'),
  notaDebitoC(12, 'Nota Débito C'),
  notaCreditoC(13, 'Nota Crédito C');

  const CbteTipo(this.code, this.label);

  /// Código numérico AFIP/ARCA.
  final int code;

  /// Etiqueta legible.
  final String label;

  /// Buscar por código numérico.
  static CbteTipo fromCode(int code) =>
      CbteTipo.values.firstWhere((e) => e.code == code);

  /// ¿Es tipo A? (requiere CUIT del receptor).
  bool get isTypeA => [1, 2, 3].contains(code);
}
