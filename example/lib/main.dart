import 'dart:convert';

import 'package:arca_connect_sdk/arca_connect_sdk.dart';

/// Ejemplo: health check con logs HTTP y resumen en consola.
///
/// Reemplazá la API key por una válida de tu cuenta en
/// [ARCA Connect](https://conectarca.com) antes de ejecutar.
Future<void> main() async {
  final sdk = ArcaConnectSdk(
    apiKey: 'arca_sk_test_xxx',
    cuit: '20111111112',
    environment: ArcaEnvironment.development,
  );

  // Request/response completos del cliente (Dio LogInterceptor).
  sdk.enableLogging(logPrint: _dimHttp);

  try {
    final health = await sdk.params.healthCheck();
    _printHealthReport(health);
  } on Object catch (e, st) {
    // ignore: avoid_print
    print('');
    // ignore: avoid_print
    print('$_kRed✗$_kReset Error: $e');
    // ignore: avoid_print
    print(st);
  }
}

// --- Estilo consola (ANSI; Windows 10+ terminal suele respetarlo) ---

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

void _printHealthReport(ArcaHealth health) {
  final ok = health.isHealthy;
  final badge = ok
      ? '$_kGreen$_kBold● OK$_kReset'
      : '$_kYellow$_kBold● Revisar$_kReset';
  final json = (const JsonEncoder.withIndent('  ')).convert(health.toJson());

  final buf = StringBuffer()
    ..writeln()
    ..writeln('$_kCyan╔══════════════════════════════════════════════════════════╗$_kReset')
    ..writeln('$_kCyan║$_kReset ${_kBold}ARCA Connect — GET /arca/health$_kReset')
    ..writeln('$_kCyan╠══════════════════════════════════════════════════════════╣$_kReset')
    ..writeln(
      '$_kCyan║$_kReset  $badge  '
      '${ok ? 'Todos los servicios reportan OK.' : 'Algún servicio no está OK.'}',
    )
    ..writeln('$_kCyan║$_kReset')
    ..writeln('$_kCyan║$_kReset  AppServer  → ${health.appServer}')
    ..writeln('$_kCyan║$_kReset  DbServer   → ${health.dbServer}')
    ..writeln('$_kCyan║$_kReset  AuthServer → ${health.authServer}')
    ..writeln('$_kCyan╠══════════════════════════════════════════════════════════╣$_kReset')
    ..writeln('$_kCyan║$_kReset ${_kDim}Modelo (ArcaHealth.toJson):$_kReset');

  for (final line in json.split('\n')) {
    buf.writeln('$_kCyan║$_kReset  $line');
  }

  buf.writeln('$_kCyan╚══════════════════════════════════════════════════════════╝$_kReset');

  // ignore: avoid_print
  print(buf.toString());
}
