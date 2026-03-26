/// Concepto del comprobante (productos, servicios o ambos).
enum Concepto {
  productos(1, 'Productos'),
  servicios(2, 'Servicios'),
  productosYServicios(3, 'Productos y Servicios');

  const Concepto(this.code, this.label);

  /// Código numérico.
  final int code;

  /// Etiqueta legible.
  final String label;

  /// Requiere fechas de servicio (servicios o mixto).
  bool get requiresServiceDates => code == 2 || code == 3;
}
