import 'package:flutter/material.dart';
import 'package:handyman_provider/core/repositories/login_repository.dart';
import 'package:handyman_provider/src/login/login.dart';
import 'package:string_validator/string_validator.dart';

import '/core/base/base_view_model.dart';
import '/core/logger/logger.dart';
import 'otp.dart';

class SignupViewModel extends AppBaseViewModel {
  final Logger _logger;
  final LoginRepository _loginRepository;
  final name = TextEditingController();
  final email = TextEditingController();
  final mobile = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  bool isNameValid = false;
  bool isEmailValid = false;
  bool isMobileValid = false;
  bool isPasswordValid = false;
  bool isConfirmPasswordValid = false;
  bool obscureTextPassword = true;
  bool obscureTextConfirmPassword = true;

  SignupViewModel(this._logger, this._loginRepository);

  onSinUpTap() async {
    loadingOverlay.show(message: 'Signing Up...');
    final response = await _loginRepository.register(
      name.text.trim(),
      mobile.text.trim(),
      email.text.trim(),
      password.text.trim(),
      confirmPassword.text.trim(),
    );

    if (response is String) {
      snackBar.show(message: response);
    }
    if (response is Map<String, dynamic>) {
      snackBar.show(message: response['msg'], isError: false);
      appNavigator.navigateTo(
        OTP(token: response['data']['token']),
      );
    }
    loadingOverlay.dismiss();
  }

  onLoginTap() {
    appNavigator.navigateTo(const Login());
  }

  onNameChange(String? value) {
    if ((value ?? '').isNotEmpty) {
      isNameValid = true;
    } else {
      isNameValid = false;
    }
    notifyListeners();
  }

  onEmailChange(String? value) {
    if (isEmail(value ?? '')) {
      isEmailValid = true;
    } else {
      isEmailValid = false;
    }
    notifyListeners();
  }

  onMobileChange(String? value) {
    if ((isInt(value ?? '') && isLength(value ?? '', 7, 11))) {
      isMobileValid = true;
    } else {
      isMobileValid = false;
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

  onConfirmPasswordChange(String? value) {
    if ((value ?? '') == password.text) {
      isConfirmPasswordValid = true;
    } else {
      isConfirmPasswordValid = false;
    }
    notifyListeners();
  }

  onShowPasswordToggle() {
    obscureTextPassword = !obscureTextPassword;
    notifyListeners();
  }

  onShowConfirmPasswordToggle() {
    obscureTextConfirmPassword = !obscureTextConfirmPassword;
    notifyListeners();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    mobile.dispose();
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
}
