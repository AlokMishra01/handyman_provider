import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/accepted_services/accepted_service_model.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/core/repositories/accepted_service_repository.dart';
import 'package:handyman_provider/src/login/login.dart';

import '/core/base/base_view_model.dart';

class AcceptedDetailsViewModel extends AppBaseViewModel {
  AcceptedDetailsViewModel(this._logger, this._repository);

  final Logger _logger;
  final AcceptedServiceRepository _repository;
  late AcceptedServiceData model;

  init(AcceptedServiceData m) {
    model = m;
    notifyListeners();
  }

  complete() async {
    loadingOverlay.show();
    final response = await _repository.completeService(model.serviceId);
    if (response is String) {
      snackBar.show(message: response);
    } else {
      await _repository.getAccepted();
      final p = await preference.getString(AppKeys.accepted);
      if (p != null) {
        final services = AcceptedServiceModel.fromJson(jsonDecode(p));
        model = services.data.firstWhere((e) => e.orderId == model.orderId);
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  accept() async {
    loadingOverlay.show();
    final response = await _repository.acceptService(model.serviceId);
    if (response is String) {
      snackBar.show(message: response);
    } else {
      await _repository.getAssigned();
      final p = await preference.getString(AppKeys.assigned);
      if (p != null) {
        final services = AcceptedServiceModel.fromJson(jsonDecode(p));
        model = services.data.firstWhere((e) => e.orderId == model.orderId);
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  onNavigate(Widget page) {
    appNavigator.navigateTo(page);
  }

  logOut() {
    preference.clear();
    appNavigator.navigateTo(const Login(), clearStack: true);
  }
}
