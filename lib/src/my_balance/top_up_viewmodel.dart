import 'package:flutter/material.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/repositories/balance_repository.dart';

import '/core/base/base_view_model.dart';

class TopUpViewModel extends AppBaseViewModel {
  TopUpViewModel(this._logger, this._repository);

  final price = TextEditingController();
  String? file;

  final Logger _logger;
  final BalanceRepository _repository;

  // init() {
  //   getData();
  // }

  // getData() async {
  //   loadingOverlay.show();
  //   final res = await preference.getString(AppKeys.myService);
  //   if (res != null) {
  //     model = MyServiceModel.fromJson(jsonDecode(res));
  //     notifyListeners();
  //     loadingOverlay.dismiss();
  //   }
  //   final response = await _repository.getMyService();
  //   if (response is String) {
  //     snackBar.show(message: response);
  //   } else {
  //     final p = await preference.getString(AppKeys.myService);
  //     if (p != null) {
  //       model = MyServiceModel.fromJson(jsonDecode(p));
  //       notifyListeners();
  //     }
  //   }
  //   loadingOverlay.dismiss();
  // }

  // remove(int id) async {
  //   loadingOverlay.show();
  //   await _repository.removeMyService(id: id);
  //   loadingOverlay.dismiss();
  //   getData();
  // }

  save() async {
    if (file == null) return;
    loadingOverlay.show();
    try {
      final response = await _repository.topUp(
        amount: double.parse(price.text.trim()),
        payment: 'bank-transfer',
        voucher: file ?? '',
      );
      if (response is String) {
        snackBar.show(message: response);
      } else {
        appNavigator.pop();
      }
    } catch (e) {
      snackBar.show(message: e.toString());
    }
    loadingOverlay.dismiss();
  }

  onNavigate(Widget page) {
    appNavigator.navigateTo(page);
  }

  @override
  void dispose() {
    price.dispose();
    super.dispose();
  }
}
