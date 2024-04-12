import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/colors_failure.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/colors_repository.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/random_color.dart';
import 'package:solid_software_test/clean_architecture/infrastructure/colors/colors_data_source.dart';
import 'package:solid_software_test/core/either_utils.dart';
import 'package:solid_software_test/core/logger.dart';

/// Implementation of Colors contract.
@Injectable(as: ColorsRepository)
class ColorsRepositoryImpl implements ColorsRepository {
  final ColorsDataSource _colorsDataSource;

  /// Creates instance of [ColorsRepositoryImpl].
  ColorsRepositoryImpl(this._colorsDataSource);

  @override
  Either<ColorsFailure, RandomColor> getRandomColorValue() => _run(
        () => RandomColor(
          colorValue: _colorsDataSource.getRandomColorValue(),
        ),
      );

  Either<ColorsFailure, T> _run<T>(T Function() run) => EitherUtils.tryCatch(
        run,
        (m, s) {
          Logger.e(m, stackTrace: s);

          return const ColorsFailure.unexpected();
        },
      );
}
