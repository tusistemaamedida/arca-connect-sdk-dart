import 'package:arca_connect_sdk/arca_connect_sdk.dart';
import 'package:test/test.dart';

void main() {
  group('ArcaHealth.fromApiData', () {
    test('lee services con claves PascalCase (API Laravel / Conectar CA)', () {
      final h = ArcaHealth.fromApiData(<String, dynamic>{
        'status': 'healthy',
        'environment': 'production',
        'services': <String, dynamic>{
          'AppServer': 'OK',
          'DbServer': 'OK',
          'AuthServer': 'OK',
        },
      });
      expect(h.isHealthy, isTrue);
      expect(h.appServer, 'OK');
      expect(h.dbServer, 'OK');
      expect(h.authServer, 'OK');
    });

    test('acepta formato plano snake_case legacy', () {
      final h = ArcaHealth.fromApiData(<String, dynamic>{
        'app_server': 'OK',
        'db_server': 'OK',
        'auth_server': 'OK',
      });
      expect(h.isHealthy, isTrue);
    });

    test('falta de clave usa ERROR como en el backend PHP', () {
      final h = ArcaHealth.fromApiData(<String, dynamic>{
        'services': <String, dynamic>{'AppServer': 'OK', 'DbServer': 'ERROR'},
      });
      expect(h.authServer, 'ERROR');
      expect(h.isHealthy, isFalse);
    });
  });
}
