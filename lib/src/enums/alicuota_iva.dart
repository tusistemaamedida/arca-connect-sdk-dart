/// Alícuota de IVA (código AFIP y porcentaje).
enum AlicuotaIva {
  iva0(3, 0.0, '0%'),
  iva105(4, 10.5, '10.5%'),
  iva21(5, 21.0, '21%'),
  iva27(6, 27.0, '27%'),
  iva5(8, 5.0, '5%'),
  iva25(9, 2.5, '2.5%');

  const AlicuotaIva(this.code, this.porcentaje, this.label);

  /// Código de alícuota AFIP.
  final int code;

  /// Porcentaje de IVA.
  final double porcentaje;

  /// Etiqueta legible.
  final String label;
}
