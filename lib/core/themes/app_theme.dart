import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_color_generator/material_color_generator.dart';

import 'app_colors.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    primarySwatch: generateMaterialColor(color: AppColors.secondary),
    scaffoldBackgroundColor: AppColors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'SourceSansPro',
    splashColor: AppColors.white,
    textTheme: GoogleFonts.muktaTextTheme(),
  );
}
