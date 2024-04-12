import 'package:flutter/material.dart';
import 'package:solid_software_test/core/theme/theme_constants.dart';

/// The dark Theme instance of the Application.
final darkTheme = ThemeData(
  colorScheme: colorScheme,
  useMaterial3: useMaterialThree,
  textTheme: const TextTheme(
    labelSmall: labelSmall,
    displayLarge: displayLarge,
  ),
);
