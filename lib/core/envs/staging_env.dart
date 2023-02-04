import '/core/base/env.dart';

class StagingEnv extends EnvVars {
  @override
  String get baseUrl => 'https://api-v4.stg.mybos.com';

  @override
  String get apiVersion => '/api/v4';

  @override
  String get appToken => '__@mbv4vbm@__';
}
