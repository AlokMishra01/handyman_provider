// /*
//  * Copyright (c) 2022.
//  * Author: Kishor Mainali
//  * Company: EB Pearls
//  */
//
// import 'dart:io';
//
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:path/path.dart' as p;
// import 'package:path_provider/path_provider.dart';
//
// typedef DownloadSuccessCallback = void Function(String);
// typedef DownloadFailedCallback = void Function(String);
// typedef DownloadProgressCallback = void Function(String);
//
// class DownloadService {
//   DownloadService._();
//
//   factory DownloadService() {
//     return instance;
//   }
//
//   static DownloadService get instance => DownloadService._();
//
//   final Dio _dio = Dio();
//
//   Future<String?> getFilePath() async {
//     String? path;
//     if (Platform.isAndroid) {
//       final dir = await getExternalStorageDirectory();
//       path = dir!.path;
//     } else {
//       final dir = await getApplicationDocumentsDirectory();
//       path = dir.path;
//     }
//     return path;
//   }
//
//   Future<void> download({
//     required String downloadUrl,
//     required String savePath,
//     required DownloadSuccessCallback onSuccess,
//     required DownloadFailedCallback onFailed,
//     required DownloadProgressCallback onProgress,
//     Map<String, dynamic>? queryParams,
//     dynamic data,
//     CancelToken? cancelToken,
//     Options? options,
//   }) async {
//     try {
//       final response = await _dio.download(
//         downloadUrl,
//         savePath,
//         onReceiveProgress: (received, total) {
//           if (total != -1) {
//             final progress = '${(received / total * 100).toStringAsFixed(0)}%';
//             if (progress != '100%') {
//               onProgress(progress);
//             }
//           }
//         },
//         queryParameters: queryParams,
//         cancelToken: cancelToken,
//         options: options ??
//             Options(
//               responseType: ResponseType.bytes,
//               headers: {
//                 HttpHeaders.acceptEncodingHeader: '*',
//               },
//             ),
//         data: data,
//       );
//       if (response.statusCode == 200) {
//         onSuccess(savePath);
//       } else {
//         onFailed('Something Went wrong ${response.statusCode}');
//       }
//     } on DioError catch (e, stack) {
//       onFailed(e.message);
//     } catch (e) {
//       onFailed(e.toString());
//     }
//   }
//
//   Future<void> downloadAndViewFile(
//     BuildContext context, {
//     required String downloadUrl,
//     required String fileName,
//   }) async {
//     final CancelToken cancelToken = CancelToken();
//     late final BuildContext _innerContext;
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (innerContext) {
//         _innerContext = innerContext;
//         return Dialog(
//           backgroundColor: AppColors.white,
//           insetPadding: 20.all,
//           shape: RoundedRectangleBorder(borderRadius: 8.rounded),
//           child: Padding(
//             padding: 20.all,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const CircularProgressIndicator.adaptive(),
//                 20.verticalSpace,
//                 Text(
//                   'Downloading File Please Wait....',
//                   style: AppStyles.text14PxMedium.primary,
//                 ),
//                 CustomButton.text(
//                   label: 'Cancel',
//                   onPressed: () async {
//                     await 200.delayedMilliSeconds;
//                     cancelToken.cancel();
//                   },
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//     await 200.delayedMilliSeconds;
//     final filePath = await getFilePath();
//     if (filePath == null) {
//       Navigator.maybeOf(_innerContext)?.pop();
//       return;
//     }
//     final savePath = p.join(filePath, fileName);
//     final file = File(savePath);
//     if (file.existsSync()) {
//       Navigator.maybeOf(_innerContext)?.pop();
//       OpenFilex.open(savePath);
//     } else {
//       await download(
//         downloadUrl: downloadUrl,
//         savePath: savePath,
//         cancelToken: cancelToken,
//         onSuccess: (path) {
//           Navigator.maybeOf(_innerContext)?.pop();
//           OpenFilex.open(path);
//         },
//         onFailed: (message) {
//           Navigator.maybeOf(_innerContext)?.pop();
//           if (cancelToken.isCancelled) {
//             context.showSnackbar(message: 'Download Cancelled', error: true);
//           } else {
//             context.showSnackbar(message: message, error: true);
//           }
//         },
//         onProgress: (progress) {},
//       );
//     }
//   }
// }
