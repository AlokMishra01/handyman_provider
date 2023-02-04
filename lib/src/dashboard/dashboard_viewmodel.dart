import 'package:handyman_provider/core/logger/logger.dart';

import '/core/base/base_view_model.dart';

class DashboardViewModel extends AppBaseViewModel {
  DashboardViewModel(this._logger);

  final Logger _logger;
  int selectedIndex = 0;

  onItemSelected(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
