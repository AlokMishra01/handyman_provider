// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:residentapp/src/core/extensions/extensions.dart';
//
// class ImagePickerHelper {
//   ImagePickerHelper._();
//
//   static final ImagePicker _picker = ImagePicker();
//
//   static Future<XFile?> pickImageFromCamera() async {
//     try {
//       final res =
//           await _picker.pickImage(source: ImageSource.camera, imageQuality: 85);
//       return res;
//     } on PlatformException {
//       return null;
//     }
//   }
//
//   static Future<XFile?> pickImageFromGallery() async {
//     try {
//       final res = await _picker.pickImage(
//           source: ImageSource.gallery, imageQuality: 85);
//       return res;
//     } on PlatformException {
//       return null;
//     }
//   }
//
//   static Future<XFile?> pickImageFromGallery2Mb(BuildContext context) async {
//     try {
//       final res = await _picker.pickImage(
//           source: ImageSource.gallery, imageQuality: 85);
//       if (res != null) {
//         final sizeInBytes = await res.length();
//         double sizeInMb = sizeInBytes / (1024 * 1024);
//         if (sizeInMb < 2) {
//           return res;
//         } else {
//           context.showSnackbar(
//               message: 'Image must be less than 2 mb', error: true);
//           return null;
//         }
//       } else {
//         return null;
//       }
//     } on PlatformException catch (e) {
//       return null;
//     }
//   }
//
//   static Future<XFile?> pickImageFromCamera2Mb(BuildContext context) async {
//     try {
//       final res =
//           await _picker.pickImage(source: ImageSource.camera, imageQuality: 85);
//       if (res != null) {
//         final sizeInBytes = await res.length();
//         double sizeInMb = sizeInBytes / (1024 * 1024);
//         if (sizeInMb < 2) {
//           return res;
//         } else {
//           context.showSnackbar(
//               message: 'Image must be less than 2 mb', error: true);
//           return null;
//         }
//       } else {
//         return null;
//       }
//     } on PlatformException {
//       return null;
//     }
//   }
//
//   static Future<List<XFile>?> pickMultipleImageFromGallery() async {
//     try {
//       final res = await _picker.pickMultiImage(imageQuality: 85);
//       return res;
//     } on PlatformException {
//       return null;
//     }
//   }
//
//   static Future<List<XFile>?> pickMultipleImageFromGallery2Mb(BuildContext context) async {
//     final List<XFile>? acceptedImages = <XFile>[];
//     try {
//       final res = await _picker.pickMultiImage(imageQuality: 85);
//       if (res.isNotEmpty) {
//         for (final file in res) {
//           final sizeInBytes = await file.length();
//           double sizeInMb = sizeInBytes / (1024 * 1024);
//           if (sizeInMb < 2) {
//             acceptedImages?.add(file);
//           }
//         }
//         if (acceptedImages?.length != res.length) {
//           context.showSnackbar(message: 'Image must be less than 2 mb', error: true);
//         }
//       }
//       return acceptedImages;
//     } on PlatformException {
//       return null;
//     }
//   }
// }
