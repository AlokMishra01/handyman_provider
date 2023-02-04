import 'package:flutter/foundation.dart';
import 'package:loggy/loggy.dart';

class Logger {
  static final _loggy = Loggy('Handyman');

  Logger() {
    Loggy.initLoggy(
      logPrinter: const PrettyPrinter(showColors: true),
    );
  }

  showInfo({required dynamic message, Object? error, StackTrace? stackTrace}) {
    if (kDebugMode) {
      _loggy.info(message, error, stackTrace);
    }
  }
}
