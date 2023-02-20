import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/core/themes/theme.dart';

class LoadingOverlay {
  LoadingOverlay() {
    EasyLoading.instance
      ..userInteractions = false
      ..dismissOnTap = false
      ..maskColor = AppColors.white.withOpacity(0.25)
      ..backgroundColor = AppColors.white
      ..textStyle = AppStyles.text18PxSemiBold.copyWith(
        color: AppColors.black,
      )
      ..textColor = AppColors.black
      ..animationStyle = EasyLoadingAnimationStyle.scale
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorType = EasyLoadingIndicatorType.ripple
      ..indicatorColor = AppColors.secondary
      ..contentPadding = EdgeInsets.all(36.r)
      ..indicatorSize = 64.r
      ..radius = 12.r
      ..boxShadow = [];
  }

  show({String message = "Loading..."}) {
    EasyLoading.show(
      maskType: EasyLoadingMaskType.custom,
      status: message,
    );
  }

  dismiss() {
    EasyLoading.dismiss();
  }
}
