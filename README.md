# arca_connect_sdk

SDK en Dart para integrar **factura electrónica ARCA** (ex AFIP) en aplicaciones Flutter o Dart. Permite emitir comprobantes (A, B, C), obtener CAE y consultar parámetros vía la API REST de **ARCA Connect**.

## Requisitos

- Dart SDK `>=3.8.0 <4.0.0`
- Cuenta y API Key en [ARCA Connect](https://conectarca.com)

## Instalación

Agregá la dependencia en `pubspec.yaml`:

```yaml
dependencies:
  arca_connect_sdk: ^0.1.5
```

Luego:

```bash
dart pub get
```

## Ejemplos en el repositorio

La carpeta [`example/`](example/) es una mini-app Dart que depende del SDK por **ruta local** (`path: ../`), útil para probar cambios antes de publicar.

### Requisitos

- Tener [Dart](https://dart.dev/get-dart) instalado (la misma versión que cumpla `sdk: '>=3.8.0 <4.0.0'` del paquete).
- Una **API Key** y un **CUIT** válidos de [ARCA Connect](https://conectarca.com).

### Pasos

1. **Clonar o copiar** el repositorio y situarse en la raíz del paquete (donde está el `pubspec.yaml` principal).

2. **Entrar al ejemplo e instalar dependencias** (resuelve `arca_connect_sdk` desde `../`):

   ```bash
   cd example
   dart pub get
   ```

3. **Editar credenciales** en [`example/lib/main.dart`](example/lib/main.dart): reemplazá `apiKey: 'arca_sk_test_xxx'` y `cuit` por valores reales de prueba. No subas claves al repositorio.

4. **Ejecutar** el programa:

   ```bash
   dart run lib/main.dart
   ```

### Qué hace el ejemplo

- Crea `ArcaConnectSdk` con el entorno elegido (`ArcaEnvironment.development` o `production`).
- Activa **`sdk.enableLogging`** para imprimir en consola el request/response HTTP completos (útil para depurar).
- Llama a **`sdk.params.healthCheck()`** y muestra un resumen con el estado de AppServer, DbServer y AuthServer.
- Consulta el **último número de comprobante** emitido en el punto de venta 1 para Factura B.
- **Emite una Factura B de servicios** con IVA 21 %, período de servicio, `condicionIvaReceptorId` y desglose de `IvaItem`, e imprime en consola el CAE, fecha de vencimiento, número de comprobante, URL del QR AFIP, impuestos desglosados y observaciones de ARCA.
- Captura y muestra por separado errores de validación local (`ArcaValidationException`) y errores de la API (`ArcaException`).

Si la API Key o el CUIT no son válidos, el SDK lanzará al llamar a la API; revisá el mensaje y los logs HTTP.

## Uso rápido

```dart
import 'package:arca_connect_sdk/arca_connect_sdk.dart';

final sdk = ArcaConnectSdk(
  apiKey: 'arca_sk_test_xxx',
  cuit: '20111111112',
  environment: ArcaEnvironment.development,
);
```

### Configuración

| Parámetro | Descripción |
|-----------|-------------|
| `apiKey` | Debe comenzar con `arca_sk_` (test o live según documentación). |
| `cuit` | 11 dígitos, sin guiones. |
| `environment` | `ArcaEnvironment.development` o `production`. |
| `baseUrl` | Opcional: sobrescribe la URL por defecto del entorno. |
| `timeout` | Por defecto 30 s. |

### Servicios principales

- **`sdk.invoices`**: `create`, `get`, `list`, `getLastNumber`.
- **`sdk.params`**: `healthCheck`, `getCbteTipos`, `getIvaTipos`, `getMonedas`, `getCotizacion`.

---

## Servicio de facturas (`sdk.invoices`)

### Emitir un comprobante

```dart
final result = await sdk.invoices.create(
  InvoiceData(
    puntoVenta: 1,
    cbteTipo: CbteTipo.facturaB,
    concepto: Concepto.servicios,
    docTipo: DocTipo.consumidorFinal,
    docNro: '0',

    // Requerido desde RG 5616 (condición IVA del receptor).
    // 5 = Consumidor Final, 1 = Responsable Inscripto, etc.
    condicionIvaReceptorId: 5,

    // Importes (impTotal debe ser igual a impNeto + impIva ± 0.01).
    impTotal: 1210.00,
    impNeto: 1000.00,
    impIva: 210.00,

    // Fechas requeridas cuando concepto = servicios o ambos.
    fchServDesde: DateTime(2026, 3, 1),
    fchServHasta: DateTime(2026, 3, 31),
    fchVtoPago: DateTime(2026, 4, 10),

    // Fecha del comprobante (opcional; la API usa la del día si se omite).
    cbteDate: DateTime(2026, 3, 31),

    // Desglose de IVA (id = alícuota ARCA, baseImp = base gravada, importe = monto IVA).
    iva: const [
      IvaItem(id: AlicuotaIva.iva21, baseImp: 1000.00, importe: 210.00),
    ],

    // Tributos adicionales (opcional).
    tributos: const [
      TributoItem(id: 99, desc: 'Otros tributos', baseImp: 0, alic: 0, importe: 0),
    ],
  ),
);

// Verificar resultado
if (result.approved) {
  print('CAE: ${result.cae}');
  print('Vto. CAE: ${result.caeVto}');
  print('N° comprobante: ${result.cbteNumero}');
  print('QR AFIP: ${result.qr}');
} else {
  print('Rechazado: ${result.resultado}');
  print('Observaciones: ${result.observaciones}');
}
```

#### Parámetros de `InvoiceData`

| Campo | Tipo | Requerido | Descripción |
|---|---|:---:|---|
| `puntoVenta` | `int` | ✓ | Número de punto de venta (1–99999) |
| `cbteTipo` | `CbteTipo` | ✓ | Tipo de comprobante (ej. `facturaB`, `facturaA`) |
| `concepto` | `Concepto` | ✓ | `productos`, `servicios` o `productosYServicios` |
| `docTipo` | `DocTipo` | ✓ | Tipo de documento receptor (`cuit`, `consumidorFinal`, etc.) |
| `docNro` | `String` | ✓ | Número de documento (`"0"` para consumidor final) |
| `condicionIvaReceptorId` | `int` | ✓ | Condición IVA del receptor según RG 5616 |
| `impTotal` | `double` | ✓ | Importe total |
| `impNeto` | `double` | ✓ | Importe neto gravado |
| `impIva` | `double` | ✓ | Importe de IVA |
| `impTotConc` | `double` | — | No gravado (default `0`) |
| `impOpEx` | `double` | — | Exento (default `0`) |
| `impTrib` | `double` | — | Otros tributos (default `0`) |
| `monId` | `String` | — | Moneda (default `"PES"`) |
| `monCotiz` | `double` | — | Cotización (default `1.0`) |
| `cbteDate` | `DateTime?` | — | Fecha del comprobante |
| `fchServDesde` | `DateTime?` | ※ | Inicio de período de servicio |
| `fchServHasta` | `DateTime?` | ※ | Fin de período de servicio |
| `fchVtoPago` | `DateTime?` | ※ | Fecha de vencimiento de pago |
| `iva` | `List<IvaItem>` | — | Desglose por alícuota de IVA |
| `tributos` | `List<TributoItem>` | — | Tributos adicionales |

> ※ Requeridos cuando `concepto` es `servicios` o `productosYServicios`.

#### Campos de `InvoiceResult`

| Campo | Tipo | Descripción |
|---|---|---|
| `approved` | `bool` | `true` si ARCA aprobó el comprobante |
| `resultado` | `String` | `"A"` aprobado · `"R"` rechazado · `"P"` parcial |
| `cae` | `String?` | Código de Autorización Electrónico |
| `caeVto` | `String?` | Fecha de vencimiento del CAE (`YYYY-MM-DD`) |
| `qr` | `String?` | URL del QR AFIP para validación del comprobante |
| `cbteNumero` | `int` | Número de comprobante asignado por ARCA |
| `cbteDate` | `String?` | Fecha del comprobante |
| `id` | `String?` | Identificador único ULID en ARCA Connect |
| `cuitEmisor` | `String?` | CUIT del emisor |
| `puntoVenta` | `int?` | Punto de venta |
| `cbteTipo` | `int?` | Código de tipo de comprobante |
| `cbteTipoNombre` | `String?` | Nombre del tipo (ej. `"Factura B"`) |
| `impTotal` | `double?` | Importe total |
| `impNeto` | `double?` | Importe neto gravado |
| `impIva` | `double?` | Importe de IVA |
| `taxes` | `List<InvoiceTax>` | Impuestos desglosados en la respuesta |
| `observaciones` | `List<String>` | Observaciones de ARCA (incluso si fue aprobado) |
| `createdAt` | `String?` | Timestamp de creación (ISO 8601) |

### Obtener último número de comprobante

```dart
final numero = await sdk.invoices.getLastNumber(1, CbteTipo.facturaB);
print('Próximo N°: ${numero + 1}');
```

### Listar comprobantes emitidos

```dart
final lista = await sdk.invoices.list(
  puntoVenta: 1,
  cbteTipo: CbteTipo.facturaB,
  page: 1,
  perPage: 20,
);
for (final inv in lista) {
  print('${inv.cbteNumero} — CAE: ${inv.cae}');
}
```

### Manejo de errores

```dart
try {
  final result = await sdk.invoices.create(data);
} on ArcaValidationException catch (e) {
  // Validación local (importes, fechas, tipo de doc) o error 422 de la API.
  print(e.message);
  print(e.errors); // detalle de campos con error
} on ArcaException catch (e) {
  // Cualquier otro error del SDK (red, auth, etc.).
  print(e.message);
}
```

---

### Logging HTTP

```dart
sdk.enableLogging(); // usa print por defecto

sdk.enableLogging(logPrint: (o) => debugPrint('$o')); // en Flutter
```

## Tests

El paquete incluye tests unitarios con un cliente mock:

```bash
dart test
```

## Publicación (mantenedores)

1. Verificar con dry-run:

   ```bash
   dart pub publish --dry-run
   ```

2. Si todo es correcto, publicar (requiere cuenta en [pub.dev](https://pub.dev) vinculada a Google):

   ```bash
   dart pub publish
   ```

## Licencia

Ver el archivo `LICENSE`.

## Enlaces

- [Homepage](https://conectarca.com)
- [Repositorio](https://github.com/tusistemaamedida/arca-connect-sdk-dart)
- [Issues](https://github.com/tusistemaamedida/arca-connect-sdk-dart/issues)
