import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/models/profile_model.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:handyman_provider/core/widgets/custom_button.dart';
import 'package:handyman_provider/core/widgets/custom_text_field.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:stacked/stacked.dart';

import 'edit_profile_view_model.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key, required this.profileModel}) : super(key: key);

  final ProfileModel profileModel;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditProfileViewModel>.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => AppLocator.locator<EditProfileViewModel>(),
      onViewModelReady: (model) => model.init(profileModel),
      builder: (_, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Update Profile Details'),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                bottom: 60.h,
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  CustomTextField(
                    hint: 'Enter your full name',
                    prefixIcon: EvaIcons.person_outline,
                    controller: model.name,
                    // onChanged: model.onNameChange,
                    // hasError: !model.isNameValid,
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    hint: 'Enter your email',
                    prefixIcon: EvaIcons.at_outline,
                    controller: model.email,
                    // onChanged: model.onNameChange,
                    // hasError: !model.isNameValid,
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    hint: 'Enter your address',
                    prefixIcon: EvaIcons.pin_outline,
                    controller: model.address,
                    // onChanged: model.onNameChange,
                    // hasError: !model.isNameValid,
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    hint: 'Enter your information',
                    prefixIcon: EvaIcons.info_outline,
                    controller: model.shortInfo,
                    // onChanged: model.onNameChange,
                    // hasError: !model.isNameValid,
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    hint: 'Enter your skills',
                    prefixIcon: EvaIcons.award_outline,
                    controller: model.skills,
                    // onChanged: model.onNameChange,
                    // hasError: !model.isNameValid,
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    hint: 'Enter your experience',
                    prefixIcon: EvaIcons.person_done_outline,
                    controller: model.experience,
                    // onChanged: model.onNameChange,
                    // hasError: !model.isNameValid,
                  ),
                  SizedBox(height: 20.h),
                  MultiSelectDialogField(
                    items: model.model!.data
                        .map((e) => MultiSelectItem(e, e.name))
                        .toList(),
                    listType: MultiSelectListType.CHIP,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: AppColors.secondary,
                        width: 2.sp,
                      ),
                    ),
                    searchHint: 'Select Services',
                    initialValue: model.selected,
                    onConfirm: (values) {
                      model.selected
                        ..clear()
                        ..addAll(values);
                      model.notifyListeners();
                    },
                  ),
                  SizedBox(height: 10.h),
                  CustomButton(
                    onTap: () => model.onSave(profileModel),
                    label: 'Update',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
