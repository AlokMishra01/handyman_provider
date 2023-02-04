import 'dart:async';

import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/src/dashboard/dashboard.dart';

import '/core/base/base_view_model.dart';
import '/core/logger/logger.dart';
import '/src/login/login.dart';

class SplashViewModel extends AppBaseViewModel {
  final Logger _logger;

  SplashViewModel(
    this._logger,
  );

  initializeApp() async {
    final token = await preference.getString(AppKeys.token) ?? '';

    Timer(
      const Duration(seconds: 1),
      () {
        if (token.isEmpty) {
          appNavigator.navigateTo(const Login(), clearStack: true);
        } else {
          appNavigator.navigateTo(const Dashboard(), clearStack: true);
        }
      },
    );
  }
}
