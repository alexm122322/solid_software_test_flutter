// ignore_for_file: prefer_match_file_name
import 'package:flutter/material.dart';
import 'package:solid_software_test/core/failure.dart';
import 'package:solid_software_test/core/failure_messages.dart';

/// Base [BuildContext] extension.
extension BuildContextEx on BuildContext {
  /// [ThemeData] getter.
  ThemeData get theme => Theme.of(this);

  /// [TextTheme] getter.
  TextTheme get textTheme => theme.textTheme;

  /// [ColorScheme] getter.
  ColorScheme get colorScheme => theme.colorScheme;

  /// Shows the [SnackBar] of Failure.
  ///
  /// Important: Using the [ScaffoldMessenger].
  /// The [Scaffold] should be in up of the widget tree.
  Future<ScaffoldFeatureController<SnackBar, SnackBarClosedReason>>
      showFailureSnackBar(Failure failure) async {
    final theme = this.theme;
    final snackBar = SnackBar(
      backgroundColor: theme.colorScheme.error,
      content: Text(
        failure.message,
        style: textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onError,
        ),
      ),
    );

    return ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
