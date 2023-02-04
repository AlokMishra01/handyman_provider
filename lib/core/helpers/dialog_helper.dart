// import 'package:adaptive_sizer/adaptive_sizer.dart';
// import 'package:flutter/material.dart';
// import 'package:residentapp/src/core/extensions/extensions.dart';
//
// import '../widgets/image_preview_dialog.dart';
// import '../widgets/widgets.dart';
//
// Future showImagePicker(
//   BuildContext context,
// ) {
//   return showDialog(
//     context: context,
//     builder: (innerContext) {
//       return AlertDialog(
//         title: const Text('Select Image From'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CustomButton.text(
//                 label: 'Camera',
//                 isDisabled: false,
//                 onPressed: () {
//                   Navigator.pop(innerContext, 0);
//                 }),
//             CustomButton.text(
//                 label: 'Gallery',
//                 isDisabled: false,
//                 onPressed: () {
//                   Navigator.pop(innerContext, 1);
//                 }),
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
