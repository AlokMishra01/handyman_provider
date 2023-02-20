import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:handyman_provider/core/models/all_services/all_service_model.dart';
import 'package:handyman_provider/core/models/profile_model.dart';
import 'package:handyman_provider/core/preference/app_keys.dart';
import 'package:handyman_provider/core/repositories/profile_repository.dart';
import 'package:handyman_provider/utils/string_converter.dart';

import '/core/base/base_view_model.dart';
import '/core/logger/logger.dart';

class EditProfileViewModel extends AppBaseViewModel {
  EditProfileViewModel(this._logger, this._profileRepository);

  final Logger _logger;
  final ProfileRepository _profileRepository;
  final name = TextEditingController();
  final email = TextEditingController();
  final address = TextEditingController();
  final shortInfo = TextEditingController();
  final skills = TextEditingController();
  final experience = TextEditingController();
  final id = TextEditingController();
  bool isNameValid = false;
  bool isEmailValid = false;
  bool isAddressValid = false;
  bool isShortInfoValid = false;
  bool isSkillValid = false;
  bool isExperienceValid = false;

  AllServiceModel? model;
  List<GeneralServiceModel> selected = [];

  late ProfileModel temp;

  init(ProfileModel profile) {
    temp = profile;

    name.text = profile.name;
    email.text = profile.email;
    address.text = profile.detail?.address ?? '';
    shortInfo.text = profile.detail?.shortInfo ?? '';
    skills.text = profile.detail?.skills ?? '';
    experience.text = (profile.detail?.experience ?? '').removeTags();
    id.text = profile.idNumber;
    getData(profile);
  }

  getData(ProfileModel profile) async {
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
    for (final s in profile.offeredServices) {
      selected.addAll(model!.data.where((e) => e.id == s.id).toList());
    }
    loadingOverlay.dismiss();
  }

  onSave(ProfileModel profile) async {
    //   if (selected == null) return;
    loadingOverlay.show();

    List<int> offered = [];
    for (final s in selected) {
      offered.add(s.id);
    }

    final response = await _profileRepository.updateProfile(
      name: name.text.trim(),
      email: email.text.trim(),
      address: address.text.trim(),
      info: shortInfo.text.trim(),
      skills: skills.text.trim(),
      experience: experience.text.trim(),
      latitude: (profile.detail?.geolocation?.latitude ?? '80').toString(),
      longitude: (profile.detail?.geolocation?.longitude ?? '80').toString(),
      services: [],
      idNumber: id.text.trim(),
      serviceTypeId: offered,
    );

    loadingOverlay.dismiss();

    if (response is String) {
      snackBar.show(message: response);
    } else {
      appNavigator.pop();
    }
  }

  onDocUpload(String path) async {
    loadingOverlay.show();

    final response = await _profileRepository.uploadID(id: path);

    loadingOverlay.dismiss();

    if (response is String) {
      snackBar.show(message: response);
    } else {
      appNavigator.pop();
    }
  }

  // onEdit(int id) async {
  //   loadingOverlay.show();
  //   final response = await _profileRepository.updateMyService(
  //     id: id,
  //     price: price.text.trim(),
  //     duration: duration.text.trim(),
  //     description: description.text.trim(),
  //   );
  //   loadingOverlay.dismiss();
  //
  //   if (response is String) {
  //     snackBar.show(message: response);
  //   } else {
  //     appNavigator.pop();
  //   }
  // }

  // onSelect(ServiceModel? value) {
  //   selected = value;
  //   notifyListeners();
  // }

  onNavigate(Widget page) async {
    await appNavigator.navigateTo(page);
    init(temp);
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    address.dispose();
    shortInfo.dispose();
    skills.dispose();
    experience.dispose();
    id.dispose();
    super.dispose();
  }
}
