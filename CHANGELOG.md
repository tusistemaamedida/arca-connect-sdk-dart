## 0.1.5

- **`InvoiceData`**: campo requerido `condicionIvaReceptorId` (obligatorio por RG 5616 de ARCA). Campo opcional `cbteDate` (`cbte_fecha`). Lista opcional `tributos` (`List<TributoItem>`) para tributos adicionales.
- **`TributoItem`**: nueva clase Freezed con serialización JSON (`id`, `desc`, `baseImp`, `alic`, `importe`).
- **`InvoiceResult`**: nuevos campos mapeados desde la respuesta de la API: `id` (ULID), `qr` (URL QR AFIP), `cae`, `caeVto`, `cbteDate`, `cuitEmisor`, `environment`, `puntoVenta`, `cbteTipo`, `cbteTipoNombre`, `concepto`, `docTipo`, `docNro`, `condicionIvaReceptorId`, `impTotal`, `impNeto`, `impIva`, `monId`, `taxes` (`List<InvoiceTax>`), `createdAt`, `updatedAt`.
- **`InvoiceTax`**: nueva clase para parsear el array `taxes` de la respuesta (`id`, `type`, `taxId`, `baseImp`, `importe`, `description`).
- **Example**: `example/lib/main.dart` ampliado con ejemplo completo de emisión de factura B de servicios con IVA 21%.
- **README**: documentación del servicio de facturas actualizada con todos los campos, tabla de parámetros de respuesta y QR.

## 0.1.4

- Documentación README ampliada: sección **Ejemplos en el repositorio** con requisitos, pasos (`cd example`, `dart pub get`, editar `main.dart`, `dart run lib/main.dart`) y descripción de qué hace el ejemplo (logging HTTP, `healthCheck`, salida formateada).
- **Example:** `example/lib/main.dart` orientado a prueba manual contra la API (health + logging + resumen en consola).

## 0.1.3

- **Health check / Conectar CA:** `ParamsService.healthCheck()` parsea el `data` real de la API (`data.services` con claves `AppServer`, `DbServer`, `AuthServer` en PascalCase) mediante `ArcaHealth.fromApiData`. Se mantiene compatibilidad con el JSON plano legacy (`app_server`, `db_server`, `auth_server`).
- **HTTP 503:** el endpoint de salud puede responder `503` cuando el servicio está degradado; el cliente ya no trata esa respuesta como error de Dio, de modo que `ArcaConnectSdk.testConnection()` y `healthCheck()` pueden leer el cuerpo JSON.
- **API:** `ArcaApiClient.get` acepta `Options?` (por ejemplo `validateStatus`) para casos como el anterior.
- Tests añadidos para `ArcaHealth.fromApiData`; el mock de health refleja la forma anidada de la API.

## 0.1.1

- Requisito de Dart SDK elevado a `>=3.8.0` (alineado con `json_serializable` / generadores actuales).
- Actualización de `freezed` / `freezed_annotation` a la línea 3 (clases `abstract` según migración).
- Carpeta `example/` con un programa mínimo (`example/lib/main.dart`).
- Documentación `dartdoc` ampliada (librería, `ArcaApiClient.config`, `ArcaHealth`).

## 0.1.0

- Versión inicial: cliente HTTP, modelos Freezed, servicios de facturación y parámetros, excepciones tipadas.
