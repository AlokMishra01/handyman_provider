import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:handyman_provider/core/helpers/dialogs.dart';
import 'package:handyman_provider/core/logger/logger.dart';
import 'package:handyman_provider/core/models/profile_model.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/core/repositories/profile_repository.dart';
import 'package:handyman_provider/src/login/login.dart';

import '/core/base/base_view_model.dart';

class DashboardViewModel extends AppBaseViewModel {
  DashboardViewModel(this._logger, this._profileRepository);

  final Logger _logger;
  final ProfileRepository _profileRepository;
  int selectedIndex = 0;
  final pageController = PageController(initialPage: 0);
  ProfileModel? profileModel;

  initDashboard(BuildContext context) {
    getProfile(context);
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

  onNavigate(Widget page) {
    appNavigator.navigateTo(page);
  }

  logOut() {
    preference.clear();
    appNavigator.navigateTo(const Login(), clearStack: true);
  }
}
