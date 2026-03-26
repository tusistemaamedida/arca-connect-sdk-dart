/// Entorno de la API ARCA Connect.
enum ArcaEnvironment {
  development,
  production;

  /// URL base del entorno (mismo host; diferenciación futura por ambiente).
  String get baseUrl => switch (this) {
        development => 'https://api.arcaconnect.com/v1',
        production => 'https://api.arcaconnect.com/v1',
      };
}
