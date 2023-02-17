import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/helpers/assets_helper.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:handyman_provider/core/widgets/custom_button.dart';
import 'package:handyman_provider/core/widgets/custom_text_field.dart';
import 'package:handyman_provider/src/signup/signup_view_model.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stacked/stacked.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewModel>.reactive(
      viewModelBuilder: () => AppLocator.locator<SignupViewModel>(),
      onViewModelReady: (model) {},
      builder: (_, model, child) {
        return Scaffold(
          body: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 48.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetsHelper.appLogoWide,
                    width: 200.w,
                  ),
                  SizedBox(height: 30.h),
                  CustomTextField(
                    hint: 'Enter your full name',
                    prefixIcon: EvaIcons.person_outline,
                    controller: model.name,
                    onChanged: model.onNameChange,
                    hasError: !model.isNameValid,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    hint: 'Enter your email',
                    prefixIcon: EvaIcons.at_outline,
                    controller: model.email,
                    onChanged: model.onEmailChange,
                    hasError: !model.isEmailValid,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    // label: 'Email',
                    hint: 'Enter your mobile number',
                    prefixIcon: EvaIcons.phone_outline,
                    controller: model.mobile,
                    onChanged: model.onMobileChange,
                    hasError: !model.isMobileValid,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    hint: 'Enter Password',
                    controller: model.password,
                    prefixIcon: EvaIcons.lock_outline,
                    suffixIcon: model.obscureTextPassword
                        ? EvaIcons.eye_outline
                        : EvaIcons.eye_off_2_outline,
                    onChanged: model.onPasswordChange,
                    hasError: !model.isPasswordValid,
                    obscureText: model.obscureTextPassword,
                    onSuffixTap: model.onShowPasswordToggle,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    hint: 'Confirm Password',
                    controller: model.confirmPassword,
                    prefixIcon: EvaIcons.lock_outline,
                    suffixIcon: model.obscureTextConfirmPassword
                        ? EvaIcons.eye_outline
                        : EvaIcons.eye_off_2_outline,
                    onChanged: model.onConfirmPasswordChange,
                    hasError: !model.isConfirmPasswordValid,
                    obscureText: model.obscureTextConfirmPassword,
                    onSuffixTap: model.onShowConfirmPasswordToggle,
                  ),
                  SizedBox(height: 20.h),
                  CustomButton(
                    onTap: model.onSinUpTap,
                    label: 'Sign Up',
                    isDisabled: !model.isNameValid ||
                        !model.isEmailValid ||
                        !model.isMobileValid ||
                        !model.isConfirmPasswordValid ||
                        !model.isPasswordValid,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: AppStyles.text18PxSemiBold,
                      ),
                      InkWell(
                        onTap: model.onLoginTap,
                        child: Text(
                          ' Login ',
                          style: AppStyles.text18PxSemiBold.copyWith(
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                    ],
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
