import 'package:easy_localization/easy_localization.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/colors_failure.dart';
import 'package:solid_software_test/core/failure.dart';

extension _ColorsFailureMessages on ColorsFailure {
  String get message {
    return when(
      unexpected: () => 'failures.unexpected'.tr(),
    );
  }
}

/// The extension for adding messages to [Failure].
extension FailureMessages on Failure {
  /// The human-readable message of the [Failure].
  ///
  /// Trows:
  ///   - Exception: The [Failure] is not registered in this method.
  String get message {
    if (this is ColorsFailure) {
      return (this as ColorsFailure).message;
    }

    throw Exception('Unexpected Failure.');
  }
}
