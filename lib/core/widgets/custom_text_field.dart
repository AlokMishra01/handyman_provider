import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/themes/theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.controller,
    this.label,
    this.hint,
    this.error,
    this.hasError = false,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.onSuffixTap,
    this.validator,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final String? error;
  final bool hasError;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final VoidCallback? onSuffixTap;
  final String? Function(String?)? validator;

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
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          onChanged: onChanged,
          validator: validator,
          obscureText: obscureText,
          obscuringCharacter: '•',
          decoration: InputDecoration(
            isDense: true,
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: BorderSide(
                color: hasError ? AppColors.primary : AppColors.secondary,
                width: 2.sp,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: BorderSide(
                color: hasError ? AppColors.primary : AppColors.secondary,
                width: 2.sp,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: BorderSide(
                color: hasError ? AppColors.primary : AppColors.disabled,
                width: 2.sp,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: BorderSide(
                color: hasError ? AppColors.primary : AppColors.secondary,
                width: 2.sp,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: BorderSide(
                color: hasError ? AppColors.primary : AppColors.secondary,
                width: 2.sp,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
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
            suffixIcon: suffixIcon != null
                ? IconButton(
                    icon: Icon(
                      suffixIcon,
                      size: 28.sp,
                      color: hasError ? AppColors.primary : AppColors.secondary,
                    ),
                    onPressed: onSuffixTap,
                  )
                : null,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 12.h,
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
