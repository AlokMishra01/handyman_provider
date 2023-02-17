import 'package:handyman_provider/core/repositories/login_repository.dart';
import 'package:handyman_provider/src/login/login.dart';

import '/core/base/base_view_model.dart';
import '/core/logger/logger.dart';

class OTPViewModel extends AppBaseViewModel {
  final Logger _logger;
  final LoginRepository _loginRepository;

  OTPViewModel(this._logger, this._loginRepository);

  onVerify(String token, String otp) async {
    loadingOverlay.show(message: 'Verifying...');
    final response = await _loginRepository.registerVerify(otp, token);

    if (response is String) {
      snackBar.show(message: response);
    }
    if (response is Map<String, dynamic>) {
      snackBar.show(message: response['msg'], isError: false);
      appNavigator.navigateTo(const Login());
    }
    loadingOverlay.dismiss();
  }
}
