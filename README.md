# arca_connect_sdk

SDK en Dart para integrar **factura electrónica ARCA** (ex AFIP) en aplicaciones Flutter o Dart. Permite emitir comprobantes (A, B, C), obtener CAE y consultar parámetros vía la API REST de **ARCA Connect**.

## Requisitos

- Dart SDK `>=3.8.0 <4.0.0`
- Cuenta y API Key en [ARCA Connect](https://conectarca.com)

## Instalación

Agregá la dependencia en `pubspec.yaml`:

```yaml
dependencies:
  arca_connect_sdk: ^0.1.4
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
- Llama a **`sdk.params.healthCheck()`** (no solo `testConnection`) y muestra un resumen con el estado de AppServer, DbServer y AuthServer, más el JSON del modelo `ArcaHealth`.

Si la API Key o el CUIT no son válidos, el SDK lanzará al construir el cliente o al llamar a la API; revisá el mensaje y los logs HTTP.

## Uso rápido

```dart
import 'package:arca_connect_sdk/arca_connect_sdk.dart';

final sdk = ArcaConnectSdk(
  apiKey: 'arca_sk_test_xxx',
  cuit: '20111111112',
  environment: ArcaEnvironment.development,
);

final ok = await sdk.testConnection();
if (!ok) {
  // Revisar red / API Key
}

final result = await sdk.invoices.create(
  InvoiceData(
    puntoVenta: 1,
    cbteTipo: CbteTipo.facturaB,
    concepto: Concepto.productos,
    docTipo: DocTipo.consumidorFinal,
    docNro: '0',
    impTotal: 1210,
    impNeto: 1000,
    impIva: 210,
    // ...
  ),
);

print(result.cae);
print(result.cbteNumero);
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
