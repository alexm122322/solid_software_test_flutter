import 'package:logger/logger.dart' as logger;

/// Custom static Logger. Use for to log messages to the console.
abstract class Logger {
  static final _logger = logger.Logger();

  /// Logging the error with [message] and
  /// [time], [error], [stackTrace] if needed.
  static void e(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.e(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
