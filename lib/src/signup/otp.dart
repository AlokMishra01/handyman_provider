import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/di/app_locator.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked/stacked.dart';

import 'otp_view_model.dart';

class OTP extends StatelessWidget {
  const OTP({Key? key, required this.token}) : super(key: key);

  final String token;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OTPViewModel>.reactive(
      viewModelBuilder: () => AppLocator.locator<OTPViewModel>(),
      onViewModelReady: (model) {},
      builder: (_, model, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: Container(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Verification Code",
                  style: AppStyles.text36PxBold.copyWith(
                    color: AppColors.secondary,
                  ),
                ),
                SizedBox(height: 30.h),
                Align(
                  alignment: Alignment.center,
                  child: Pinput(
                    showCursor: true,
                    length: 4,
                    onCompleted: (value) {
                      model.onVerify(token, value);
                    },
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
