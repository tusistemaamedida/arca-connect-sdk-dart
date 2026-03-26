import 'package:arca_connect_sdk/arca_connect_sdk.dart';
import 'package:test/test.dart';

void main() {
  group('ArcaConnectConfig', () {
    test('valida CUIT con 11 dígitos', () {
      expect(
        () => ArcaConnectConfig(
          apiKey: 'arca_sk_test_abc',
          cuit: '123',
          environment: ArcaEnvironment.development,
        ),
        throwsA(isA<ArcaValidationException>()),
      );
    });

    test('valida apiKey con prefijo correcto', () {
      expect(
        () => ArcaConnectConfig(
          apiKey: 'invalid_key',
          cuit: '20111111112',
          environment: ArcaEnvironment.development,
        ),
        throwsA(isA<ArcaValidationException>()),
      );
    });

    test('crea config válida', () {
      final config = ArcaConnectConfig(
        apiKey: 'arca_sk_test_abc123',
        cuit: '20111111112',
        environment: ArcaEnvironment.development,
      );
      expect(config.cuit, '20111111112');
      expect(config.effectiveBaseUrl, contains('conectarca.com'));
    });
  });
}
