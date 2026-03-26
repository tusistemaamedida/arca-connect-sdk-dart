/// SDK para integrar [factura electrónica ARCA](https://conectarca.com) (ex AFIP)
/// en aplicaciones Dart o Flutter.
///
/// Punto de entrada principal: [ArcaConnectSdk]. Incluye cliente HTTP, modelos
/// de comprobantes, enums y excepciones tipadas.
library arca_connect_sdk;

export 'src/arca_connect_sdk.dart';
export 'src/api_client.dart';
export 'src/config.dart';
export 'src/models/invoice_data.dart';
export 'src/models/invoice_result.dart';
export 'src/models/arca_health.dart';
export 'src/enums/cbte_tipo.dart';
export 'src/enums/concepto.dart';
export 'src/enums/doc_tipo.dart';
export 'src/enums/alicuota_iva.dart';
export 'src/enums/environment.dart';
export 'src/exceptions/arca_exception.dart';
export 'src/exceptions/auth_exception.dart';
export 'src/exceptions/validation_exception.dart';
export 'src/exceptions/invoice_exception.dart';
export 'src/services/invoice_service.dart';
export 'src/services/params_service.dart';
