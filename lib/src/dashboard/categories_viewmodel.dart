import 'package:flutter/material.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/all_services/all_service_model.dart';
import 'package:handyman_provider/core/models/all_services/service_by_id_model.dart';
import 'package:handyman_provider/core/repositories/profile_repository.dart';
import 'package:handyman_provider/src/login/login.dart';

import '/core/base/base_view_model.dart';

class CategoriesViewModel extends AppBaseViewModel {
  CategoriesViewModel(this._logger, this._repository);

  final Logger _logger;
  final ProfileRepository _repository;
  ServiceByIdModel? model;
  late GeneralServiceModel temp;

  init(GeneralServiceModel m) {
    temp = m;
    getAccepted(m);
  }

  getAccepted(GeneralServiceModel m) async {
    loadingOverlay.show();
    model = await _repository.getServiceById(m.id);
    notifyListeners();
    loadingOverlay.dismiss();
  }

  onNavigate(Widget page) async {
    await appNavigator.navigateTo(page);
    init(temp);
  }

  logOut() {
    preference.clear();
    appNavigator.navigateTo(const Login(), clearStack: true);
  }
}
