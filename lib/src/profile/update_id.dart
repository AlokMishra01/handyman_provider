import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/models/profile_model.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:handyman_provider/core/widgets/custom_button.dart';
import 'package:handyman_provider/core/widgets/custom_text_field.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stacked/stacked.dart';

import 'edit_profile_view_model.dart';

class UpdateID extends StatelessWidget {
  const UpdateID({Key? key, required this.profileModel}) : super(key: key);

  final ProfileModel profileModel;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditProfileViewModel>.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => AppLocator.locator<EditProfileViewModel>(),
      onViewModelReady: (model) => model.init(profileModel),
      builder: (_, model, child) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 5.w),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        EvaIcons.arrow_back,
                        size: 28.sp,
                        color: AppColors.secondary,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 10.h,
                        ),
                        child: Text(
                          'Update My Identification',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.text24PxBold.copyWith(
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
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
                          hint: 'National Id/Passport Number',
                          prefixIcon: EvaIcons.credit_card_outline,
                          controller: model.id,
                          // onChanged: model.onNameChange,
                          // hasError: !model.isNameValid,
                        ),
                        SizedBox(height: 10.h),
                        AspectRatio(
                          aspectRatio: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.background.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () async {
                                      final result =
                                          await FilePicker.platform.pickFiles();
                                      if (result != null) {
                                        model.onDocUpload(
                                          result.files.single.path ?? '',
                                        );
                                      }
                                    },
                                    icon: Icon(
                                      EvaIcons.file_add_outline,
                                      size: 36.sp,
                                      color: AppColors.secondary,
                                    ),
                                  ),
                                  Text(
                                    'Upload National Id/Passport',
                                    style: AppStyles.text16PxSemiBold,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        CustomButton(
                          onTap: () => model.onSave(profileModel),
                          label: 'Update',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
