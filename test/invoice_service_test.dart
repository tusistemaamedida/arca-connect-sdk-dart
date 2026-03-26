import 'package:arca_connect_sdk/arca_connect_sdk.dart';
import 'package:test/test.dart';

import 'helpers/mock_api_client.dart';

void main() {
  group('InvoiceService', () {
    test('emite factura y retorna CAE', () async {
      final client = MockApiClient(
        onPost: (_, __) => fakeSuccessInvoice(),
        onGet: (_) => fakeLastNumber(0),
      );
      final config = ArcaConnectConfig(
        apiKey: 'arca_sk_test_x',
        cuit: '20111111112',
        environment: ArcaEnvironment.development,
      );
      final service = InvoiceService(client, config);

      final result = await service.create(validInvoiceData());

      expect(result.approved, isTrue);
      expect(result.cae, '73041486873924');
      expect(result.cbteNumero, 1);
    });

    test('retorna errores cuando ARCA rechaza', () async {
      final client = MockApiClient(
        onPost: (_, __) => fakeRejectedInvoice(),
      );
      final config = ArcaConnectConfig(
        apiKey: 'arca_sk_test_x',
        cuit: '20111111112',
        environment: ArcaEnvironment.development,
      );
      final service = InvoiceService(client, config);

      final result = await service.create(validInvoiceData());
      expect(result.approved, isFalse);
      expect(result.errores, isNotEmpty);
    });

    test('valida que importes cuadren', () async {
      final config = ArcaConnectConfig(
        apiKey: 'arca_sk_test_x',
        cuit: '20111111112',
        environment: ArcaEnvironment.development,
      );
      final service = InvoiceService(MockApiClient(), config);

      final badData = validInvoiceData().copyWith(impTotal: 9999);
      await expectLater(
        service.create(badData),
        throwsA(isA<ArcaValidationException>()),
      );
    });

    test('valida fechas servicio para concepto servicios', () async {
      final config = ArcaConnectConfig(
        apiKey: 'arca_sk_test_x',
        cuit: '20111111112',
        environment: ArcaEnvironment.development,
      );
      final service = InvoiceService(MockApiClient(), config);

      final noFechas = InvoiceData(
        puntoVenta: 1,
        cbteTipo: CbteTipo.facturaB,
        concepto: Concepto.servicios,
        docTipo: DocTipo.consumidorFinal,
        docNro: '0',
        impTotal: 1210,
        impNeto: 1000,
        impIva: 210,
      );
      await expectLater(
        service.create(noFechas),
        throwsA(isA<ArcaValidationException>()),
      );
    });
  });
}

InvoiceData validInvoiceData() => InvoiceData(
      puntoVenta: 1,
      cbteTipo: CbteTipo.facturaB,
      concepto: Concepto.servicios,
      docTipo: DocTipo.consumidorFinal,
      docNro: '0',
      impTotal: 1210,
      impNeto: 1000,
      impIva: 210,
      fchServDesde: DateTime(2026, 2, 1),
      fchServHasta: DateTime(2026, 2, 28),
      fchVtoPago: DateTime(2026, 3, 15),
      iva: <IvaItem>[
        IvaItem(id: AlicuotaIva.iva21, baseImp: 1000, importe: 210),
      ],
    );
