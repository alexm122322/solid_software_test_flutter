// ignore_for_file: avoid_unused_parameters
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solid_software_test/core/entity.dart';

part 'random_color.freezed.dart';

/// Random Color Data Object.
@freezed
class RandomColor with _$RandomColor implements Entity {
  /// Constructor of Color Data Object.
  ///
  /// colorValue - integer code of the color.
  const factory RandomColor({
    required int colorValue,
  }) = _RandomColor;
}
