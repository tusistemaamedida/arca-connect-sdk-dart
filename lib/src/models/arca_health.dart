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

  /// Todos los subsistemas reportan `OK`.
  bool get isHealthy =>
      appServer == 'OK' && dbServer == 'OK' && authServer == 'OK';
}
