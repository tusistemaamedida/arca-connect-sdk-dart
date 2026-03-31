import 'dart:convert';

import 'package:arca_connect_sdk/arca_connect_sdk.dart';

/// Ejemplo completo: health check + emisión de factura electrónica.
///
/// Reemplazá la API key y el CUIT por valores válidos de tu cuenta en
/// [ARCA Connect](https://conectarca.com) antes de ejecutar.
///
/// ```bash
/// cd example
/// dart pub get
/// dart run lib/main.dart
/// ```
Future<void> main() async {
  final sdk = ArcaConnectSdk(
    apiKey: '',
    cuit: '11223334455',
    environment: ArcaEnvironment.development,
  );

  // Imprime request/response HTTP completos (útil para depurar).
  sdk.enableLogging(logPrint: _dimHttp);

  try {
    // ── 1. Health check ───────────────────────────────────────────────────────
    final health = await sdk.params.healthCheck();
    _printHealthReport(health);

    // ── 2. Último número de comprobante ───────────────────────────────────────
    final lastNumber = await sdk.invoices.getLastNumber(1, CbteTipo.facturaB);
    _printSection('Último comprobante Factura B / PV 1', 'cbteNro: $lastNumber');

    // ── 3. Emitir Factura B de Servicios ─────────────────────────────────────
    final result = await sdk.invoices.create(
      InvoiceData(
        puntoVenta: 1,
        cbteTipo: CbteTipo.facturaB,
        concepto: Concepto.servicios,
        docTipo: DocTipo.consumidorFinal,
        docNro: '0',

        // Condición IVA del receptor (requerido desde RG 5616).
        // 5 = Consumidor Final.
        condicionIvaReceptorId: 5,

        // Importes (impTotal = impNeto + impIva).
        impTotal: 1210.00,
        impNeto: 1000.00,
        impIva: 210.00,

        // Moneda (opcional, por defecto PES / cotiz 1.0).
        monId: 'PES',
        monCotiz: 1.0,

        // Fechas de servicio (requeridas cuando concepto = servicios o ambos).
        fchServDesde: DateTime(2026, 3, 1),
        fchServHasta: DateTime(2026, 3, 31),
        fchVtoPago: DateTime(2026, 4, 10),

        cbteDate: DateTime.now(),
        // Desglose IVA: id 5 = 21 %, base 1000, importe 210.
        iva: const <IvaItem>[
          IvaItem(id: AlicuotaIva.iva21, baseImp: 1000.00, importe: 210.00),
        ],

        // Tributos adicionales (opcional, vacío por defecto).
        tributos: const <TributoItem>[],
      ),
    );

    _printInvoiceResult(result);
  } on ArcaValidationException catch (e) {
    _printError('Validación local fallida', e.message);
  } on ArcaException catch (e) {
    _printError('Error de la API (${e.code ?? '-'})', e.message);
  } on Object catch (e, st) {
    _printError('Error inesperado', '$e\n$st');
  }
}

// ─── Helpers de salida ────────────────────────────────────────────────────────

const String _kDim = '\x1B[2m';
const String _kBold = '\x1B[1m';
const String _kGreen = '\x1B[32m';
const String _kYellow = '\x1B[33m';
const String _kCyan = '\x1B[36m';
const String _kRed = '\x1B[31m';
const String _kReset = '\x1B[0m';

void _dimHttp(Object line) {
  // ignore: avoid_print
  print('$_kDim$line$_kReset');
}

void _printSection(String title, String body) {
  // ignore: avoid_print
  print('\n$_kBold$_kCyan▸ $title$_kReset\n  $body\n');
}

void _printError(String title, String detail) {
  // ignore: avoid_print
  print('\n$_kRed$_kBold✗ $title$_kReset\n  $detail\n');
}

void _printHealthReport(ArcaHealth health) {
  final ok = health.isHealthy;
  final badge =
      ok ? '$_kGreen${_kBold}● OK$_kReset' : '$_kYellow${_kBold}● Revisar$_kReset';
  final json = (const JsonEncoder.withIndent('  ')).convert(health.toJson());

  final buf = StringBuffer()
    ..writeln()
    ..writeln(
        '$_kCyan╔══════════════════════════════════════════════════════════╗$_kReset')
    ..writeln(
        '$_kCyan║$_kReset ${_kBold}ARCA Connect — Health Check$_kReset')
    ..writeln(
        '$_kCyan╠══════════════════════════════════════════════════════════╣$_kReset')
    ..writeln(
        '$_kCyan║$_kReset  $badge  '
        '${ok ? 'Todos los servicios OK.' : 'Algún servicio no responde.'}')
    ..writeln('$_kCyan║$_kReset')
    ..writeln('$_kCyan║$_kReset  AppServer  → ${health.appServer}')
    ..writeln('$_kCyan║$_kReset  DbServer   → ${health.dbServer}')
    ..writeln('$_kCyan║$_kReset  AuthServer → ${health.authServer}')
    ..writeln(
        '$_kCyan╠══════════════════════════════════════════════════════════╣$_kReset')
    ..writeln('$_kCyan║$_kReset ${_kDim}ArcaHealth.toJson:$_kReset');

  for (final line in json.split('\n')) {
    buf.writeln('$_kCyan║$_kReset  $line');
  }
  buf.writeln(
      '$_kCyan╚══════════════════════════════════════════════════════════╝$_kReset');

  // ignore: avoid_print
  print(buf.toString());
}

void _printInvoiceResult(InvoiceResult r) {
  final badge = r.approved
      ? '$_kGreen${_kBold}● APROBADO$_kReset'
      : '$_kRed${_kBold}● RECHAZADO$_kReset';

  final buf = StringBuffer()
    ..writeln()
    ..writeln(
        '$_kCyan╔══════════════════════════════════════════════════════════╗$_kReset')
    ..writeln(
        '$_kCyan║$_kReset ${_kBold}Comprobante emitido$_kReset')
    ..writeln(
        '$_kCyan╠══════════════════════════════════════════════════════════╣$_kReset')
    ..writeln('$_kCyan║$_kReset  $badge')
    ..writeln('$_kCyan║$_kReset')
    ..writeln(
        '$_kCyan║$_kReset  ID             → ${r.id ?? '-'}')
    ..writeln(
        '$_kCyan║$_kReset  Tipo           → ${r.cbteTipoNombre ?? r.cbteTipo} N° ${r.cbteNumero}')
    ..writeln(
        '$_kCyan║$_kReset  Fecha          → ${r.cbteDate ?? '-'}')
    ..writeln(
        '$_kCyan║$_kReset  CAE            → ${r.cae ?? '-'}')
    ..writeln(
        '$_kCyan║$_kReset  Vto. CAE       → ${r.caeVto ?? '-'}')
    ..writeln(
        '$_kCyan║$_kReset  Importe total  → \$${r.impTotal?.toStringAsFixed(2) ?? '-'}')
    ..writeln(
        '$_kCyan║$_kReset  Resultado ARCA → ${r.resultado}');

  if (r.qr != null) {
    buf
      ..writeln('$_kCyan║$_kReset')
      ..writeln('$_kCyan║$_kReset  ${_kDim}QR AFIP:$_kReset')
      ..writeln('$_kCyan║$_kReset  ${r.qr}');
  }

  if (r.taxes.isNotEmpty) {
    buf
      ..writeln('$_kCyan║$_kReset')
      ..writeln('$_kCyan║$_kReset  ${_kDim}Impuestos:$_kReset');
    for (final t in r.taxes) {
      buf.writeln(
          '$_kCyan║$_kReset    [${t.type}] id=${t.taxId}  base=\$${t.baseImp.toStringAsFixed(2)}  importe=\$${t.importe.toStringAsFixed(2)}');
    }
  }

  if (r.observaciones.isNotEmpty) {
    buf
      ..writeln('$_kCyan║$_kReset')
      ..writeln('$_kCyan║$_kReset  $_kYellow Observaciones:$_kReset');
    for (final o in r.observaciones) {
      buf.writeln('$_kCyan║$_kReset    - $o');
    }
  }

  buf.writeln(
      '$_kCyan╚══════════════════════════════════════════════════════════╝$_kReset');

  // ignore: avoid_print
  print(buf.toString());
}
