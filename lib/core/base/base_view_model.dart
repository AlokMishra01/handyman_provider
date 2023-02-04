import 'package:stacked/stacked.dart';

import '/core/di/app_locator.dart';
import '/core/loading_overlay/loading_overlay.dart';
import '/core/logger/logger.dart';
import '/core/navigation/app_navigator.dart';
import '/core/preference/preference.dart';
import '/core/snack_bar/app_snack_bar.dart';

class AppBaseViewModel extends BaseViewModel {
  final logger = AppLocator.locator<Logger>();
  final preference = AppLocator.locator<Preference>();
  final snackBar = AppSnackBar();
  final loadingOverlay = LoadingOverlay();
  final appNavigator = AppNavigator();

  @override
  void setBusy(bool value) {
    if (value) {
      loadingOverlay.show();
    } else {
      loadingOverlay.dismiss();
    }
    super.setBusy(value);
  }
}
