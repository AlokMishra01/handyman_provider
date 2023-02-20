import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/themes/theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    this.label = 'Submit',
    this.icon,
    this.isDisabled = false,
    this.isExpanded = true,
    this.color = AppColors.green,
    this.elevation = 0,
  }) : super(key: key);

  final VoidCallback onTap;
  final String label;
  final IconData? icon;
  final bool isDisabled;
  final bool isExpanded;
  final Color color;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 46.h,
      color: color,
      disabledColor: AppColors.disabled,
      elevation: elevation.sp,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.h),
      ),
      onPressed: isDisabled ? null : onTap,
      child: Row(
        mainAxisSize: isExpanded ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Icon(
              icon,
              color: AppColors.white,
              size: 28.sp,
            ),
          if (icon != null) SizedBox(width: 5.w),
          Text(
            label,
            style: AppStyles.text18PxSemiBold.copyWith(
              color: AppColors.white,
            ),
          ),
          if (icon != null) SizedBox(width: 8.w),
        ],
      ),
    );
  }
}
