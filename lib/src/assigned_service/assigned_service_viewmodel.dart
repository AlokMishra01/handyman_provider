import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/accepted_services/accepted_service_model.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/core/repositories/accepted_service_repository.dart';

import '/core/base/base_view_model.dart';

class AssignedServiceViewModel extends AppBaseViewModel {
  AssignedServiceViewModel(this._logger, this._repository);

  final Logger _logger;
  final AcceptedServiceRepository _repository;
  AcceptedServiceModel? model;

  init() {
    get();
  }

  get() async {
    loadingOverlay.show();
    final res = await preference.getString(AppKeys.assigned);
    if (res != null) {
      model = AcceptedServiceModel.fromJson(jsonDecode(res));
      notifyListeners();
      loadingOverlay.dismiss();
    }
    final response = await _repository.getAssigned();
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.assigned);
      if (p != null) {
        model = AcceptedServiceModel.fromJson(jsonDecode(p));
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  onNavigate(Widget page) {
    appNavigator.navigateTo(page);
  }
}
