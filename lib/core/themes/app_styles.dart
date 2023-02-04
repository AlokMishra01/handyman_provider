import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle text0Px = GoogleFonts.sourceSansPro(
    fontSize: 0.sp,
    height: 0,
    fontStyle: FontStyle.normal,
  );

  static TextStyle text9Px = GoogleFonts.sourceSansPro(
    fontSize: 9.sp,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
  );

  static TextStyle text9PxMedium = GoogleFonts.sourceSansPro(
    fontSize: 9.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
  );

  static TextStyle text9PxSemiBold = GoogleFonts.sourceSansPro(
    fontSize: 9.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
  );

  static TextStyle text9PxBold = GoogleFonts.sourceSansPro(
    fontSize: 9.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
  );

  static TextStyle text16PxMedium = GoogleFonts.sourceSansPro(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static TextStyle text16PxSemiBold = GoogleFonts.sourceSansPro(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );

  static TextStyle text18Px = GoogleFonts.sourceSansPro(
    fontSize: 18.sp,
    fontStyle: FontStyle.normal,
    height: calculateHeight(18, 18),
  );

  static TextStyle text18PxSemiBold = GoogleFonts.sourceSansPro(
    fontSize: 18.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    height: calculateHeight(18, 18),
  );

  static TextStyle text36PxBold = GoogleFonts.sourceSansPro(
    fontSize: 36.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    height: calculateHeight(48, 36),
  );

  // calculate line height of text
  static double calculateHeight(double height, double fontSize) {
    return height.h / fontSize.sp;
  }

  static double calculateSpacing(double em) {
    return 16 * em;
  }
}
