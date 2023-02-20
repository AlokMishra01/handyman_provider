import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/my_balance/my_balance_model.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/core/repositories/balance_repository.dart';

import '/core/base/base_view_model.dart';

class MyBalanceViewModel extends AppBaseViewModel {
  MyBalanceViewModel(this._logger, this._repository);

  final Logger _logger;
  final BalanceRepository _repository;
  MyBalanceModel? model;

  init() {
    getBalance();
  }

  getBalance() async {
    loadingOverlay.show();
    final res = await preference.getString(AppKeys.balance);
    if (res != null) {
      model = MyBalanceModel.fromJson(jsonDecode(res));
      notifyListeners();
      loadingOverlay.dismiss();
    }
    final response = await _repository.getBalance();
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.balance);
      if (p != null) {
        model = MyBalanceModel.fromJson(jsonDecode(p));
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  onNavigate(Widget page) async {
    await appNavigator.navigateTo(page);
    init();
  }
}
