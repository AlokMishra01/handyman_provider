import 'dart:async';

class Env implements EnvVars {
  Env._();

  factory Env() => _instance;
  static final Env _instance = Env._();

  late EnvVars _vars;

  FutureOr<void> loadVars(EnvVars vars) => _vars = vars;

  @override
  String get baseUrl => _vars.baseUrl;

  @override
  String get apiVersion => _vars.apiVersion;

  @override
  String get appToken => _vars.appToken;
}

abstract class EnvVars {
  String get baseUrl;

  String get apiVersion;

  String get appToken;
}
