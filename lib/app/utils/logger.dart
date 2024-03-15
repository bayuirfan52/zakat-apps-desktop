import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

String _logName = 'ADAGO_MOBILE';

/// This logger only active when on debug mode. Don't worry
/// <br/>param [message] is dynamic
void log(dynamic message) {
  if (kDebugMode) developer.log('🤖 | $message', name: _logName);
}

/// This logger only active when on debug mode. Don't worry
/// <br/>param [message] is dynamic
void logD(dynamic message) {
  if (kDebugMode) developer.log('🤖 | $message', name: _logName);
}

/// This logger only active when on debug mode. Don't worry
/// <br/>param [message] is dynamic
void logE(dynamic message) {
  if (kDebugMode) developer.log('🔴 | $message', name: _logName);
}

/// This logger only active when on debug mode. Don't worry
/// <br/>param [message] is dynamic
void logI(dynamic message) {
  if (kDebugMode) developer.log('💻 | $message', name: _logName);
}

/// This logger only active when on debug mode. Don't worry
/// <br/>param [message] is dynamic
void logW(dynamic message) {
  if (kDebugMode) developer.log('🟠 | $message', name: _logName);
}
