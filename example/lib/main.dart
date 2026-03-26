import 'package:arca_connect_sdk/arca_connect_sdk.dart';

/// Ejemplo mínimo: crea el SDK y ejecuta [ArcaConnectSdk.testConnection].
///
/// Reemplazá la API key por una válida de tu cuenta en
/// [ARCA Connect](https://conectarca.com) antes de ejecutar.
Future<void> main() async {
  final sdk = ArcaConnectSdk(
    apiKey: 'arca_sk_test_xxx',
    cuit: '20111111112',
    environment: ArcaEnvironment.development,
  );

  final ok = await sdk.testConnection();
  // ignore: avoid_print
  print('testConnection: $ok');
}
