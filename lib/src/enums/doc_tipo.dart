/// Tipo de documento del receptor según tablas ARCA/AFIP.
enum DocTipo {
  cuit(80, 'CUIT'),
  cuil(86, 'CUIL'),
  dni(96, 'DNI'),
  consumidorFinal(99, 'Consumidor Final');

  const DocTipo(this.code, this.label);

  /// Código numérico.
  final int code;

  /// Etiqueta legible.
  final String label;
}
