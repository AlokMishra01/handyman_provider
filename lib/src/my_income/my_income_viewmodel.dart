import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/my_income/my_income_model.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/core/repositories/balance_repository.dart';

import '/core/base/base_view_model.dart';

class MyIncomeViewModel extends AppBaseViewModel {
  MyIncomeViewModel(this._logger, this._repository);

  final Logger _logger;
  final BalanceRepository _repository;
  MyIncomeModel? model;

  init() {
    getIncome();
  }

  getIncome() async {
    loadingOverlay.show();
    final res = await preference.getString(AppKeys.income);
    if (res != null) {
      model = MyIncomeModel.fromJson(jsonDecode(res));
      notifyListeners();
      loadingOverlay.dismiss();
    }
    final response = await _repository.getIncome();
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.income);
      if (p != null) {
        model = MyIncomeModel.fromJson(jsonDecode(p));
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
