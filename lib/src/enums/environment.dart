/// Entorno de la API ARCA Connect.
enum ArcaEnvironment {
  development,
  production;

  /// URL base del entorno (mismo host; diferenciación futura por ambiente).
  String get baseUrl => switch (this) {
        development => 'https://conectarca.com/api/v1',
        production => 'https://conectarca.com/api/v1',
      };
}
