import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

import '../di/getit_register.dart';

class ErrorLogger {
  static Future<void> logError(dynamic error, StackTrace? stack) {
    if (getIt.isRegistered<Logger>()) {
      final logger = getIt<Logger>();
      logger.e("----------------LOG ERROR----------------");
      logger.e("Log-Error:", error: error, stackTrace: stack);
      if (stack != null) {
        logger.e("StackTrace:\n$stack");
      }
      logger.e("---------------------------------------");
    }
    return FirebaseCrashlytics.instance.recordError(error, stack);
  }

  static Future<void> recordFlutterError(
      FlutterErrorDetails flutterErrorDetails,
      {bool fatal = false}) {
    if (getIt.isRegistered<Logger>()) {
      final logger = getIt<Logger>();
      logger.e("-------------RECORD FLUTTER ERROR--------------");
      logger.e("Record-Flutter-Error:",
          error: flutterErrorDetails.exception,
          stackTrace: flutterErrorDetails.stack);
      final stack = flutterErrorDetails.stack;
      if (stack != null) {
        logger.e("StackTrace:\n$stack");
      }
      logger.e("---------------------------------------");
    }
    return FirebaseCrashlytics.instance
        .recordFlutterError(flutterErrorDetails, fatal: fatal);
  }
}
