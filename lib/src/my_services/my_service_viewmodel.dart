import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/my_service/my_service_model.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/core/repositories/profile_repository.dart';

import '/core/base/base_view_model.dart';

class MyServiceViewModel extends AppBaseViewModel {
  MyServiceViewModel(this._logger, this._repository);

  final Logger _logger;
  final ProfileRepository _repository;
  MyServiceModel? model;

  init() {
    getData();
  }

  getData() async {
    loadingOverlay.show();
    final res = await preference.getString(AppKeys.myService);
    if (res != null) {
      model = MyServiceModel.fromJson(jsonDecode(res));
      notifyListeners();
      loadingOverlay.dismiss();
    }
    final response = await _repository.getMyService();
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.myService);
      if (p != null) {
        model = MyServiceModel.fromJson(jsonDecode(p));
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  onNavigate(Widget page) {
    appNavigator.navigateTo(page);
  }
}
