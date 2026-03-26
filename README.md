# arca_connect_sdk

SDK en Dart para integrar **factura electrónica ARCA** (ex AFIP) en aplicaciones Flutter o Dart. Permite emitir comprobantes (A, B, C), obtener CAE y consultar parámetros vía la API REST de **ARCA Connect**.

## Requisitos

- Dart SDK `>=3.8.0 <4.0.0`
- Cuenta y API Key en [ARCA Connect](https://conectarca.com)

## Instalación

Agregá la dependencia en `pubspec.yaml`:

```yaml
dependencies:
  arca_connect_sdk: ^0.1.1
```

Luego:

```bash
dart pub get
```

## Ejemplo en el repositorio

En la carpeta [`example/`](example/) hay un programa mínimo (`example/lib/main.dart`) que crea `ArcaConnectSdk` y llama a `testConnection`. Copiá esa carpeta o ejecutá desde el clon:

```bash
cd example
dart pub get
dart run lib/main.dart
```

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
