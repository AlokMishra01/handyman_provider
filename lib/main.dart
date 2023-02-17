import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'app.dart';
import 'core/di/app_locator.dart';

void main() {
  if (Platform.isAndroid) {
    AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
  }

  AppLocator();

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const App());
}
