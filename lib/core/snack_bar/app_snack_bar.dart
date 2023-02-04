import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/themes/theme.dart';
import 'package:icons_plus/icons_plus.dart';

class AppSnackBar {
  static final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  show({
    String message = 'On Snap! Some thing went wrong. Please try again.',
    bool isError = true,
  }) {
    final snackBar = SnackBar(
      elevation: 1.sp,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      behavior: SnackBarBehavior.floating,
      backgroundColor: isError ? AppColors.primary : AppColors.green,
      width: 360.w,
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            EvaIcons.alert_circle_outline,
            color: AppColors.white,
            size: 24.sp,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              message,
              style:
                  AppStyles.text16PxSemiBold.copyWith(color: AppColors.white),
            ),
          ),
        ],
      ),
    );

    scaffoldKey.currentState?.removeCurrentSnackBar();
    scaffoldKey.currentState?.showSnackBar(snackBar);
  }
}
