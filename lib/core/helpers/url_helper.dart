// import 'dart:io';
//
// import 'package:url_launcher/url_launcher.dart';
//
// abstract class UrlHelper {
//   static Future<void> launchMail({
//     required String to,
//     required String subject,
//     required String message,
//     List<String>? cc,
//     List<String>? bcc,
//   }) async {
//     final queries = <String, String>{
//       'subject': subject,
//       'body': message,
//     };
//     if (cc != null && cc.isNotEmpty) {
//       queries['cc'] = cc.join(',');
//     }
//     if (bcc != null && bcc.isNotEmpty) {
//       queries['bcc'] = bcc.join(',');
//     }
//     final launchUri =
//         Uri(scheme: 'mailto', path: to, query: encodeParams(queries));
//     if (await canLaunchUrl(launchUri)) {
//       await launchUrl(launchUri);
//     }
//   }
//
//   static Future<void> launchPhone({required String phone}) async {
//     final launchUri = Uri(scheme: 'tel', path: phone);
//     if (await canLaunchUrl(launchUri)) {
//       await launchUrl(launchUri);
//     }
//   }
//
//   static Future<void> launchBlankMail({required String email}) async {
//     final launchUri = Uri(scheme: 'mailto', path: email);
//     if (await canLaunchUrl(launchUri)) {
//       await launchUrl(launchUri);
//     }
//   }
//
//   static String? encodeParams(Map<String, dynamic> values) {
//     return values.entries
//         .map((e) =>
//             '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
//         .join('&');
//   }
//
//   static Future<void> openUrl(String url) async {
//     final launchUri = Uri.parse(url);
//     if (await canLaunchUrl(launchUri)) {
//       await launchUrl(launchUri,
//           mode: LaunchMode.externalNonBrowserApplication);
//     }
//   }
//
//   static Future<void> launchMap(String name, String address) async {
//     Uri uri;
//     if (Platform.isAndroid) {
//       uri = Uri.parse(
//           'https://www.google.com/maps/search/?api=1&query=$address&title=$name');
//     } else {
//       uri = Uri.parse('https://maps.apple.com/?address=$address');
//     }
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri);
//     }
//   }
// }
