import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/accepted_services/accepted_service_model.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/core/repositories/accepted_service_repository.dart';
import 'package:handyman_provider/src/login/login.dart';

import '/core/base/base_view_model.dart';

class AcceptedServiceViewModel extends AppBaseViewModel {
  AcceptedServiceViewModel(this._logger, this._repository);

  final Logger _logger;
  final AcceptedServiceRepository _repository;
  AcceptedServiceModel? model;

  init() {
    getAccepted();
  }

  getAccepted() async {
    loadingOverlay.show();
    final res = await preference.getString(AppKeys.accepted);
    if (res != null) {
      model = AcceptedServiceModel.fromJson(jsonDecode(res));
      notifyListeners();
      loadingOverlay.dismiss();
    }
    final response = await _repository.getAccepted();
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.accepted);
      if (p != null) {
        model = AcceptedServiceModel.fromJson(jsonDecode(p));
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  onNavigate(Widget page) async {
    await appNavigator.navigateTo(page);
    init();
  }

  logOut() {
    preference.clear();
    appNavigator.navigateTo(const Login(), clearStack: true);
  }
}
