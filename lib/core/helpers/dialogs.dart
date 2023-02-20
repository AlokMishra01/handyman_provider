import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_provider/core/themes/app_colors.dart';
import 'package:handyman_provider/core/themes/app_styles.dart';
import 'package:handyman_provider/core/widgets/custom_button.dart';

Future<T?> showActionableDialog<T>(
  BuildContext context, {
  required String title,
  required Widget child,
  VoidCallback? successAction,
  String? successLabel,
  bool centerTitle = false,
  bool showButtons = true,
}) async {
  String _successLabel = successLabel ?? 'Save';
  return showDialog<T>(
    context: context,
    builder: (builderContext) => AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
      contentPadding: EdgeInsets.all(20.sp),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      content: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppStyles.text20PxBold,
              textAlign: centerTitle ? TextAlign.center : TextAlign.left,
            ),
            8.verticalSpace,
            child,
            8.verticalSpace,
            if (showButtons)
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      label: 'Cancel',
                      color: AppColors.primary,
                      onTap: () {
                        Navigator.pop(builderContext);
                      },
                    ),
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: CustomButton(
                      label: _successLabel,
                      onTap: () {
                        Navigator.pop(builderContext);
                        successAction?.call();
                      },
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    ),
  );
}

Future<T?> showOnlySaveActionableDialog<T>(
  BuildContext context, {
  required String title,
  required Widget child,
  VoidCallback? successAction,
  String? successLabel,
  bool centerTitle = false,
}) async {
  String _successLabel = successLabel ?? 'Save';
  return showDialog<T>(
    context: context,
    builder: (builderContext) => AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
      contentPadding: EdgeInsets.all(20.sp),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      content: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppStyles.text20PxBold,
              textAlign: centerTitle ? TextAlign.center : TextAlign.left,
            ),
            8.verticalSpace,
            child,
            8.verticalSpace,
            Row(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                8.horizontalSpace,
                Expanded(
                  child: CustomButton(
                    label: _successLabel,
                    onTap: () {
                      Navigator.pop(builderContext);
                      successAction?.call();
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Future<T?> showOnlyCloseActionableDialog<T>(
  BuildContext context, {
  required String title,
  required Widget child,
  VoidCallback? action,
}) async {
  return showDialog<T>(
    context: context,
    builder: (builderContext) => AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
      contentPadding: EdgeInsets.all(20.sp),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      content: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppStyles.text20PxBold,
              textAlign: TextAlign.center,
            ),
            8.verticalSpace,
            child,
            8.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    label: 'Close',
                    color: AppColors.primary,
                    onTap: () {
                      Navigator.pop(builderContext);
                      action?.call();
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

// Future<T?> showAppDialog<T>(
//   BuildContext context,
//   Widget child, {
//   bool scrollable = false,
//   bool dismissible = true,
//   double radius = 28,
// }) async =>
//     showDialog<T>(
//       context: context,
//       barrierDismissible: dismissible,
//       builder: (builderContext) => AlertDialog(
//         scrollable: scrollable,
//         insetPadding: EdgeInsets.symmetric(horizontal: 20.w)
//             .copyWith(bottom: context.padding.bottom),
//         contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
//         shape: RoundedRectangleBorder(borderRadius: radius.rounded),
//         content: GestureDetector(
//           onTap: () {
//             context.removeFocus();
//           },
//           child: SizedBox(
//             width: context.width,
//             child: child,
//           ),
//         ),
//       ),
//     );
//
// Future<T?> showAppDialogWithActionsAndHeader<T>(
//   BuildContext context, {
//   required Widget child,
//   String? successLabel,
//   VoidCallback? successAction,
// }) async {
//   String _successLabel = successLabel ?? l10n.save;
//   return showDialog<T>(
//     context: context,
//     builder: (builderContext) => AlertDialog(
//       insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
//       contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
//       shape: RoundedRectangleBorder(borderRadius: 28.rounded),
//       content: SizedBox(
//         width: context.width,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               child,
//               8.verticalSpace,
//               Row(
//                 children: [
//                   Expanded(
//                     child: CustomButton(
//                       label: l10n.cancel,
//                       backgroundColor: AppColors.secondaryButtonBackground,
//                       textColor: AppColors.textDark,
//                       onPressed: () {
//                         Navigator.pop(builderContext);
//                       },
//                     ),
//                   ),
//                   8.horizontalSpace,
//                   Expanded(
//                     child: CustomButton(
//                       label: _successLabel,
//                       onPressed: () {
//                         Navigator.pop(builderContext);
//                         successAction?.call();
//                       },
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
//
// Future showDatePickerDialog(BuildContext context) async {
//   final date = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(DateTime.now().year - 5),
//       lastDate: DateTime(DateTime.now().year + 5));
//   if (date == null) return;
//   return date;
// }
//
// Future showTimePickerDialog(BuildContext context) async {
//   final date = await showTimePicker(
//     context: context,
//     initialTime: TimeOfDay.now(),
//   );
//   if (date == null) return;
//   return date;
// }
//
// Future showImagePicker<int>(
//   BuildContext context,
// ) {
//   return showDialog<int>(
//     context: context,
//     builder: (innerContext) {
//       return AlertDialog(
//         title: const Text('Select Image From'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CustomButton.text(
//               label: 'Camera',
//               onPressed: () {
//                 Navigator.pop(innerContext, 0);
//               },
//             ),
//             CustomButton.text(
//               label: 'Gallery',
//               onPressed: () {
//                 Navigator.pop(innerContext, 1);
//               },
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }
//
// Future showImagePreviewDialog(
//   BuildContext context,
//   String imageUrl, {
//   String? cacheKey,
// }) async =>
//     showDialog(
//       context: context,
//       builder: (builderContext) => AlertDialog(
//         insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
//         contentPadding: EdgeInsets.zero,
//         shape: RoundedRectangleBorder(borderRadius: 10.rounded),
//         content: SizedBox(
//           width: context.width,
//           child: ImagePreviewDialog(
//             imageUrl: imageUrl,
//             cacheKey: cacheKey,
//           ),
//         ),
//       ),
//     );
