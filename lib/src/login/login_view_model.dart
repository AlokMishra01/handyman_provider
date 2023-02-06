import 'package:flutter/cupertino.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/src/dashboard/dashboard.dart';
import 'package:handyman_provider/src/login/login_repository.dart';
import 'package:handyman_provider/src/profile/profile_repository.dart';
import 'package:handyman_provider/src/signup/signup.dart';
import 'package:string_validator/string_validator.dart';

import '/core/base/base_view_model.dart';
import '/core/logger/logger.dart';

class LoginViewModel extends AppBaseViewModel {
  LoginViewModel(this._logger, this._loginRepository, this._profileRepository);

  final Logger _logger;
  final LoginRepository _loginRepository;
  final ProfileRepository _profileRepository;
  final username = TextEditingController();
  final password = TextEditingController();
  bool isUsernameValid = false;
  bool isPasswordValid = false;
  bool obscureTextPassword = true;

  onLoginTap() async {
    loadingOverlay.show(message: 'Authenticating...');
    final response = await _loginRepository.login(
      username.text.trim(),
      password.text.trim(),
    );

    if (response is String) {
      snackBar.show(message: response);
    }
    if (response is Map<String, dynamic>) {
      snackBar.show(message: response['msg'], isError: false);
      preference.saveValue(AppKeys.token, response['data']['token']);
      await _profileRepository.getProfile();
      appNavigator.navigateTo(const Dashboard());
    }
    loadingOverlay.dismiss();
  }

  onForgetPasswordTap() {}

  onSignUpTap() {
    appNavigator.navigateTo(const Signup());
  }

  onEmailChange(String? value) {
    if (isEmail(value ?? '') ||
        (isInt(value ?? '') && isLength(value ?? '', 7, 11))) {
      isUsernameValid = true;
    } else {
      isUsernameValid = false;
    }
    notifyListeners();
  }

  onPasswordChange(String? value) {
    if ((value ?? '').isEmpty) {
      isPasswordValid = false;
    } else {
      isPasswordValid = true;
    }
    notifyListeners();
  }

  onShowPasswordToggle() {
    obscureTextPassword = !obscureTextPassword;
    notifyListeners();
  }

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }
}
