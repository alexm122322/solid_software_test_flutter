import 'dart:math' as math;

import 'package:injectable/injectable.dart';
import 'package:solid_software_test/core/constants.dart' as constants;

/// The [ColorsDataSource] interface.
abstract interface class ColorsDataSource {
  /// Returns random color value.
  int getRandomColorValue();
}

/// The [ColorsDataSource] interface implementation.
@Injectable(as: ColorsDataSource)
class ColorsDataSourceImpl implements ColorsDataSource {
  /// The integer max color value.
  final int maxColorValue = constants.maxColorValue;

  final math.Random _random = math.Random();

  @override
  int getRandomColorValue() {
    return _random.nextInt(maxColorValue + 1);
  }
}
