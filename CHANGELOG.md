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
