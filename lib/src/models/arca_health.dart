// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'arca_health.freezed.dart';
part 'arca_health.g.dart';

/// Estado de disponibilidad del servicio ARCA Connect (health check).
@freezed
abstract class ArcaHealth with _$ArcaHealth {
  const ArcaHealth._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ArcaHealth({
    /// Estado reportado del servidor de aplicación (por ejemplo `OK`).
    required String appServer,

    /// Estado reportado del servidor de base de datos.
    required String dbServer,

    /// Estado reportado del servidor de autenticación.
    required String authServer,
  }) = _ArcaHealth;

  /// Crea una instancia desde el JSON del endpoint de health de ARCA Connect.
  factory ArcaHealth.fromJson(Map<String, dynamic> json) =>
      _$ArcaHealthFromJson(json);

  /// Parsea el objeto `data` de la API (Conectar CA / Laravel).
  ///
  /// Formato real: `services` con claves [AppServer], [DbServer], [AuthServer].
  /// También acepta el formato plano legacy con `app_server` / `db_server` /
  /// `auth_server` en la raíz del mapa.
  factory ArcaHealth.fromApiData(Map<String, dynamic> json) {
    final nested = json['services'];
    final Map<String, dynamic> source = nested is Map
        ? Map<String, dynamic>.from(nested)
        : json;

    String pick(String pascal, String snake) {
      final v = source[pascal] ?? source[snake] ?? json[pascal] ?? json[snake];
      return v?.toString() ?? 'ERROR';
    }

    return ArcaHealth(
      appServer: pick('AppServer', 'app_server'),
      dbServer: pick('DbServer', 'db_server'),
      authServer: pick('AuthServer', 'auth_server'),
    );
  }

  /// Todos los subsistemas reportan `OK`.
  bool get isHealthy =>
      appServer == 'OK' && dbServer == 'OK' && authServer == 'OK';
}
