import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:handyman_provider/core/widgets/custom_text_field.dart';
import 'package:icons_plus/icons_plus.dart';

class TopUp extends StatelessWidget {
  const TopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                    vertical: 10.h,
                  ),
                  child: Text(
                    'Top Up',
                    style: AppStyles.text36PxBold.copyWith(
                      color: AppColors.secondary,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 48.h),
                child: Column(
                  children: [
                    CustomTextField(
                      hint: 'Deposit Amount',
                      // controller: model.username,
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
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
