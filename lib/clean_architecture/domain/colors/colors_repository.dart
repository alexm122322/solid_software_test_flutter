import 'package:dartz/dartz.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/colors_failure.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/random_color.dart';

/// Colors Contract.
abstract interface class ColorsRepository {
  /// Generates the [RandomColor].
  /// Returns The [ColorsFailure] if some error occurs.
  Either<ColorsFailure, RandomColor> getRandomColorValue();
}
