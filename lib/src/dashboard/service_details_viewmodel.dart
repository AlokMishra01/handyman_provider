import 'package:flutter/material.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/all_services/service_by_id_model.dart';
import 'package:handyman_provider/core/models/all_services/service_package_model.dart';
import 'package:handyman_provider/core/repositories/profile_repository.dart';

import '/core/base/base_view_model.dart';

class ServiceDetailsViewModel extends AppBaseViewModel {
  ServiceDetailsViewModel(this._logger, this._repository);

  final Logger _logger;
  final ProfileRepository _repository;
  late ServicePackageModel? model;

  late ServiceIDModel temp;

  init(ServiceIDModel m) {
    temp = m;
    get(m.id);
  }

  get(int id) async {
    model = null;
    notifyListeners();
    loadingOverlay.show();
    model = await _repository.getPackageDetails(id);
    notifyListeners();
    loadingOverlay.dismiss();
  }

  onNavigate(Widget page) async {
    await appNavigator.navigateTo(page);
    init(temp);
  }
}
