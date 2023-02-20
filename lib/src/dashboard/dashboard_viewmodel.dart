import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_place_picker/flutter_place_picker.dart';
import 'package:handyman_provider/core/helpers/dialogs.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/accepted_services/accepted_service_model.dart';
import 'package:handyman_provider/core/models/all_services/all_service_model.dart';
import 'package:handyman_provider/core/models/profile_model.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/core/repositories/accepted_service_repository.dart';
import 'package:handyman_provider/core/repositories/profile_repository.dart';
import 'package:handyman_provider/src/login/login.dart';

import '/core/base/base_view_model.dart';

class DashboardViewModel extends AppBaseViewModel {
  DashboardViewModel(this._logger, this._profileRepository, this._repository);

  final Logger _logger;
  final ProfileRepository _profileRepository;
  int selectedIndex = 0;
  final pageController = PageController(initialPage: 0);
  ProfileModel? profileModel;

  final AcceptedServiceRepository _repository;
  AcceptedServiceModel? accepted;
  AcceptedServiceModel? assigned;

  AllServiceModel? model;
  late BuildContext cxt;

  initDashboard(BuildContext context) {
    cxt = context;
    getProfile(context);
    getAssigned();
    getAccepted();
    getServices();
  }

  onItemSelected(int index) {
    selectedIndex = index;
    notifyListeners();
    pageController.animateToPage(
      selectedIndex,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOutQuad,
    );
  }

  getProfile(BuildContext context) async {
    loadingOverlay.show();
    final profile = await preference.getString(AppKeys.profile);
    if (profile != null) {
      profileModel = ProfileModel.fromJson(jsonDecode(profile));
      loadingOverlay.dismiss();
    }
    final response = await _profileRepository.getProfile();
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.profile);
      if (p != null) {
        profileModel = ProfileModel.fromJson(jsonDecode(p));
      }
    }
    loadingOverlay.dismiss();
    if (!((profileModel?.addPrice ?? 0) >= 1 &&
        ((profileModel?.addPrice ?? 0) <= 2))) {
      showActionableDialog(
        context,
        title: 'Do you want to request add service permission.',
        child: Container(),
      );
    }
  }

  onPicked(PickResult picked, BuildContext context) async {
    Navigator.pop(context);
    loadingOverlay.show();

    List<int> offered = [];
    for (final s in profileModel!.offeredServices) {
      offered.add(s.id);
    }

    final response = await _profileRepository.updateProfile(
      name: profileModel!.name,
      email: profileModel!.email,
      address: profileModel!.detail!.address,
      info: profileModel!.detail!.shortInfo,
      skills: profileModel!.detail!.skills,
      experience: profileModel!.detail!.experience,
      latitude: (picked.geometry?.location.lat).toString(),
      longitude: (picked.geometry?.location.lng).toString(),
      services: [],
      idNumber: profileModel!.idNumber,
      serviceTypeId: offered,
    );

    if (response is String) {
      snackBar.show(message: response);
    } else {
      await getProfile(context);
    }

    loadingOverlay.dismiss();
  }

  getAccepted() async {
    loadingOverlay.show();
    final res = await preference.getString(AppKeys.accepted);
    if (res != null) {
      accepted = AcceptedServiceModel.fromJson(jsonDecode(res));
      notifyListeners();
      loadingOverlay.dismiss();
    }
    final response = await _repository.getAccepted();
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.accepted);
      if (p != null) {
        accepted = AcceptedServiceModel.fromJson(jsonDecode(p));
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  getAssigned() async {
    loadingOverlay.show();
    final res = await preference.getString(AppKeys.assigned);
    if (res != null) {
      assigned = AcceptedServiceModel.fromJson(jsonDecode(res));
      notifyListeners();
      loadingOverlay.dismiss();
    }
    final response = await _repository.getAssigned();
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.assigned);
      if (p != null) {
        assigned = AcceptedServiceModel.fromJson(jsonDecode(p));
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  getServices() async {
    loadingOverlay.show();
    final res = await preference.getString(AppKeys.allServices);
    if (res != null) {
      model = AllServiceModel.fromJson(jsonDecode(res));
      notifyListeners();
      loadingOverlay.dismiss();
    }
    final response = await _profileRepository.getAllServices();
    if (response is String) {
      snackBar.show(message: response);
    } else {
      final p = await preference.getString(AppKeys.allServices);
      if (p != null) {
        model = AllServiceModel.fromJson(jsonDecode(p));
        notifyListeners();
      }
    }
    loadingOverlay.dismiss();
  }

  onNavigate(Widget page) async {
    await appNavigator.navigateTo(page);
    initDashboard(cxt);
  }

  logOut() {
    preference.clear();
    appNavigator.navigateTo(const Login(), clearStack: true);
  }
}
