import 'dart:math' as math;

import 'package:bloc/bloc.dart';
import 'package:solid_software_test/core/constants.dart';

/// The [Cubit] for Getting the random color.
///
/// State is integer value of color value.
/// For update state use [updateState] method.
class RandomColorValueCubit extends Cubit<int> {
  static const int _maxColorValue = maxColorValue + 1;
  static const int _initColorValue = 0xffffffff;
  final _random = math.Random();

  /// Creates the instance os [RandomColorValueCubit].
  RandomColorValueCubit() : super(_initColorValue);

  /// Updates the state of color value.
  void updateState() {
    emit(_random.nextInt(_maxColorValue));
  }
}
