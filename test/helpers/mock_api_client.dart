import 'package:arca_connect_sdk/arca_connect_sdk.dart';

/// Mock de [ArcaApiClient] con respuestas predefinidas (sin HTTP real).
class MockApiClient extends ArcaApiClient {
  MockApiClient({
    this.onGet,
    this.onPost,
  }) : super(
          ArcaConnectConfig(
            apiKey: 'arca_sk_test_mock123',
            cuit: '20111111112',
            environment: ArcaEnvironment.development,
          ),
        );

  final Map<String, dynamic> Function(String path)? onGet;
  final Map<String, dynamic> Function(String path, Map<String, dynamic>? data)?
      onPost;

  @override
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParams,
  }) async {
    if (onGet != null) {
      return onGet!(path);
    }
    return <String, dynamic>{};
  }

  @override
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
  }) async {
    if (onPost != null) {
      return onPost!(path, data);
    }
    return <String, dynamic>{};
  }
}

/// Respuesta exitosa de emisión (envuelta en `data`).
Map<String, dynamic> fakeSuccessInvoice({
  String cae = '73041486873924',
  int cbteNro = 1,
}) =>
    <String, dynamic>{
      'data': <String, dynamic>{
        'cae': cae,
        'cae_vto': '20260222',
        'cbte_numero': cbteNro,
        'resultado': 'A',
        'observaciones': <String>[],
        'errores': <String>[],
      },
      'message': 'Comprobante emitido exitosamente',
    };

/// Respuesta rechazada por ARCA.
Map<String, dynamic> fakeRejectedInvoice() => <String, dynamic>{
      'data': <String, dynamic>{
        'cae': null,
        'cae_vto': null,
        'cbte_numero': 0,
        'resultado': 'R',
        'observaciones': <String>['DocNro inválido'],
        'errores': <String>['Error 10015'],
      },
    };

/// Último número de comprobante.
Map<String, dynamic> fakeLastNumber(int n) => <String, dynamic>{
      'data': <String, dynamic>{'cbte_nro': n},
    };

/// Health check (claves según JSON snake_case de [ArcaHealth]).
Map<String, dynamic> fakeHealthy() => <String, dynamic>{
      'data': <String, dynamic>{
        'app_server': 'OK',
        'db_server': 'OK',
        'auth_server': 'OK',
      },
    };
