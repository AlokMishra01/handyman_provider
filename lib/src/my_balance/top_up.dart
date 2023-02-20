import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:handyman_provider/core/widgets/custom_button.dart';
import 'package:handyman_provider/core/widgets/custom_dropdown_field.dart';
import 'package:handyman_provider/core/widgets/custom_text_field.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stacked/stacked.dart';

import 'top_up_viewmodel.dart';

class TopUp extends StatelessWidget {
  const TopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TopUpViewModel>.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => AppLocator.locator<TopUpViewModel>(),
      // onViewModelReady: (model) => model.init(serviceModel),
      builder: (_, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Top Up'),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                children: [
                  CustomDropdownField<String>(
                    // value: model.selected,
                    value: 'bank-transfer',
                    items: (['bank-transfer']).map((e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(
                          e.toUpperCase(),
                          maxLines: 1,
                          style: AppStyles.text16PxSemiBold.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {},
                    // onChanged: model.onSelect,
                    hint: 'Select service type',
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    hint: 'Deposit Amount',
                    controller: model.price,
                    prefixIcon: Icons.money_rounded,
                    // onChanged: model.onEmailChange,
                    // hasError: !model.isUsernameValid,
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

                                model.file = result?.files.single.path;
                                model.notifyListeners();
                              },
                              icon: Icon(
                                EvaIcons.file_add_outline,
                                size: 36.sp,
                                color: AppColors.secondary,
                              ),
                            ),
                            Text(
                              'Upload Bank Voucher',
                              style: AppStyles.text16PxSemiBold,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomButton(
                    onTap: model.save,
                    label: 'Top Up',
                    icon: EvaIcons.save_outline,
                    isDisabled: false,
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
