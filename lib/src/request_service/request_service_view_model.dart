import 'package:flutter/cupertino.dart';
import 'package:handyman_provider/core/models/profile_model.dart';
import 'package:handyman_provider/core/repositories/profile_repository.dart';

import '/core/base/base_view_model.dart';
import '/core/logger/logger.dart';

class EditProfileViewModel extends AppBaseViewModel {
  EditProfileViewModel(this._logger, this._profileRepository);

  final Logger _logger;
  final ProfileRepository _profileRepository;
  final name = TextEditingController();
  final email = TextEditingController();
  final address = TextEditingController();
  final id = TextEditingController();
  bool isNameValid = false;
  bool isEmailValid = false;
  bool isAddressValid = false;

  late ProfileModel temp;

  init(ProfileModel profile) {
    temp = profile;

    name.text = profile.name;
    email.text = profile.email;
    address.text = profile.address ?? '';
    id.text = profile.idNumber;
    getData(profile);
  }

  getData(ProfileModel profile) async {
    // loadingOverlay.show();
    // final res = await preference.getString(AppKeys.allServices);
    // if (res != null) {
    //   model = AllServiceModel.fromJson(jsonDecode(res));
    //   notifyListeners();
    //   loadingOverlay.dismiss();
    // }
    // final response = await _profileRepository.getAllServices();
    // if (response is String) {
    //   snackBar.show(message: response);
    // } else {
    //   final p = await preference.getString(AppKeys.allServices);
    //   if (p != null) {
    //     model = AllServiceModel.fromJson(jsonDecode(p));
    //     notifyListeners();
    //   }
    // }
    // for (final s in profile.offeredServices) {
    //   selected.addAll(model!.data.where((e) => e.id == s.id).toList());
    // }
    // loadingOverlay.dismiss();
  }

  onSave(ProfileModel profile) async {
    loadingOverlay.show();

    final response = await _profileRepository.updateProfile(
      name: name.text.trim(),
      email: email.text.trim(),
      address: address.text.trim(),
      latitude: profile.latitude,
      longitude: profile.longitude,
      idNumber: id.text.trim(),
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
    id.dispose();
    super.dispose();
  }
}
