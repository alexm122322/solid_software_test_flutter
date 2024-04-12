import 'package:flutter/material.dart';
import 'package:solid_software_test/core/theme/theme_constants.dart';

/// The light Theme instance of the Application.
final lightTheme = ThemeData(
  colorScheme: colorScheme,
  useMaterial3: useMaterialThree,
  textTheme: const TextTheme(
    labelSmall: labelSmall,
    displayLarge: displayLarge,
  ),
);
