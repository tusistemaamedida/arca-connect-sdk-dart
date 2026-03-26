// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'arca_health.freezed.dart';
part 'arca_health.g.dart';

/// Estado de disponibilidad del servicio ARCA Connect (health check).
@freezed
class ArcaHealth with _$ArcaHealth {
  const ArcaHealth._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ArcaHealth({
    required String appServer,
    required String dbServer,
    required String authServer,
  }) = _ArcaHealth;

  factory ArcaHealth.fromJson(Map<String, dynamic> json) =>
      _$ArcaHealthFromJson(json);

  /// Todos los subsistemas reportan `OK`.
  bool get isHealthy =>
      appServer == 'OK' && dbServer == 'OK' && authServer == 'OK';
}
