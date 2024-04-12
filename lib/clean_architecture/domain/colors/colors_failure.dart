import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solid_software_test/core/failure.dart';

part 'colors_failure.freezed.dart';

/// Failures for Colors module.
///
/// [ColorsFailure.unexpected] - unknown,unexpected  failure.
@freezed
sealed class ColorsFailure with _$ColorsFailure implements Failure {
  const factory ColorsFailure.unexpected() = UnexpectedColorsFailure;
}
