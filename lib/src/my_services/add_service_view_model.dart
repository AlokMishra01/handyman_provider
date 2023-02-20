import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:handyman_provider/core/models/my_service/my_service_model.dart'
    as my;
import 'package:handyman_provider/core/models/services/services_model.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/core/repositories/profile_repository.dart';
import 'package:handyman_provider/utils/string_converter.dart';

import '/core/base/base_view_model.dart';
import '/core/logger/logger.dart';

class AddServiceViewModel extends AppBaseViewModel {
  AddServiceViewModel(this._logger, this._profileRepository);

  final Logger _logger;
  final ProfileRepository _profileRepository;
  final price = TextEditingController();
  final duration = TextEditingController();
  final description = TextEditingController();
  bool isPriceValid = false;
  bool isDurationValid = false;
  bool isDescriptionValid = false;

  ServicesModel? model;
  ServiceModel? selected;

  my.ServiceModel? temp;

  init(my.ServiceModel? serviceModel) {
    if (serviceModel != null) {
      price.text = serviceModel.price;
      duration.text = serviceModel.duration;
      description.text = serviceModel.description.removeTags();
    }
    getData();
  }

  getData() async {
    loadingOverlay.show();
    final res = await preference.getString(AppKeys.services);
    if (res != null) {
      model = ServicesModel.fromJson(jsonDecode(res));
      notifyListeners();
      loadingOverlay.dismiss();
    }
    final response = await _profileRepository.getServices();
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.services);
      if (p != null) {
        model = ServicesModel.fromJson(jsonDecode(p));
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  onSave() async {
    if (selected == null) return;
    loadingOverlay.show();
    final response = await _profileRepository.addMyService(
      serviceId: selected!.id,
      price: price.text.trim(),
      duration: duration.text.trim(),
      description: description.text.trim(),
    );
    loadingOverlay.dismiss();

    if (response is String) {
      snackBar.show(message: response);
    } else {
      appNavigator.pop();
    }
  }

  onEdit(int id) async {
    loadingOverlay.show();
    final response = await _profileRepository.updateMyService(
      id: id,
      price: price.text.trim(),
      duration: duration.text.trim(),
      description: description.text.trim(),
    );
    loadingOverlay.dismiss();

    if (response is String) {
      snackBar.show(message: response);
    } else {
      appNavigator.pop();
    }
  }

  onSelect(ServiceModel? value) {
    selected = value;
    notifyListeners();
  }

  onNavigate(Widget page) async {
    await appNavigator.navigateTo(page);
    init(temp);
  }

  @override
  void dispose() {
    price.dispose();
    duration.dispose();
    description.dispose();
    super.dispose();
  }
}
