import 'dart:async';

import '/core/base/base_view_model.dart';
import '/core/logger/logger.dart';
import '/src/login/login.dart';

class SplashViewModel extends AppBaseViewModel {
  final Logger _logger;

  SplashViewModel(
    this._logger,
  );

  initializeApp() {
    Timer(
      const Duration(seconds: 3),
      () => appNavigator.navigateTo(const Login(), clearStack: true),
    );
  }
}
