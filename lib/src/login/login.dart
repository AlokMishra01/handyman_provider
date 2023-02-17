import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/helpers/assets_helper.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:handyman_provider/core/widgets/custom_button.dart';
import 'package:handyman_provider/core/widgets/custom_text_field.dart';
import 'package:handyman_provider/src/login/login_view_model.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stacked/stacked.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => AppLocator.locator<LoginViewModel>(),
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
                    hint: 'Mobile or Email',
                    controller: model.username,
                    prefixIcon: EvaIcons.person_outline,
                    onChanged: model.onEmailChange,
                    hasError: !model.isUsernameValid,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    hint: 'Password',
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
                  // SizedBox(height: 20.h),
                  // Align(
                  //   alignment: Alignment.centerRight,
                  //   child: InkWell(
                  //     child: Text(
                  //       'Forget Password?',
                  //       style: AppStyles.text18PxSemiBold.copyWith(
                  //         color: AppColors.secondary,
                  //       ),
                  //     ),
                  //     onTap: () {},
                  //   ),
                  // ),
                  SizedBox(height: 20.h),
                  CustomButton(
                    onTap: model.onLoginTap,
                    label: 'Login',
                    icon: EvaIcons.log_in_outline,
                    isDisabled:
                        !model.isUsernameValid || !model.isPasswordValid,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: AppStyles.text18PxSemiBold,
                      ),
                      InkWell(
                        onTap: model.onSignUpTap,
                        child: Text(
                          ' Sign Up ',
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
