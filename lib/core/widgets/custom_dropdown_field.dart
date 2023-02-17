import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/themes/theme.dart';

class CustomDropdownField<T> extends StatelessWidget {
  const CustomDropdownField({
    Key? key,
    this.items = const [],
    this.label,
    this.value,
    this.hint,
    this.error,
    this.hasError = false,
    this.prefixIcon,
    this.suffixIcon,
    required this.onChanged,
  }) : super(key: key);

  final T? value;
  final List<DropdownMenuItem<T>>? items;
  final String? label;
  final String? hint;
  final String? error;
  final bool hasError;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(T?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
            child: Text(
              label ?? '',
              style: AppStyles.text18PxSemiBold.copyWith(
                color: hasError ? AppColors.primary : AppColors.secondary,
              ),
            ),
          ),
        DropdownButtonFormField<T>(
          value: value,
          items: items,
          onChanged: onChanged,
          isExpanded: true,
          decoration: InputDecoration(
            isDense: true,
            hintText: hint,
            isCollapsed: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: hasError ? AppColors.primary : AppColors.secondary,
                width: 2.sp,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: hasError ? AppColors.primary : AppColors.secondary,
                width: 2.sp,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: hasError ? AppColors.primary : AppColors.disabled,
                width: 2.sp,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: hasError ? AppColors.primary : AppColors.secondary,
                width: 2.sp,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: hasError ? AppColors.primary : AppColors.secondary,
                width: 2.sp,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: hasError ? AppColors.primary : AppColors.secondary,
                width: 2.sp,
              ),
            ),
            prefixIcon: prefixIcon != null
                ? Icon(
                    prefixIcon,
                    size: 28.sp,
                    color: hasError ? AppColors.primary : AppColors.secondary,
                  )
                : null,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            hintStyle: AppStyles.text18PxSemiBold.copyWith(
              color: AppColors.disabled,
            ),
            errorStyle: AppStyles.text18PxSemiBold,
          ),
          style: AppStyles.text18PxSemiBold,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
      ],
    );
  }
}
