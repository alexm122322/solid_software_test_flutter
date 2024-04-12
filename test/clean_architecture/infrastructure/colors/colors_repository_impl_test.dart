// ignore_for_file: avoid_late_keyword
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/colors_failure.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/random_color.dart';
import 'package:solid_software_test/clean_architecture/infrastructure/colors/colors_data_source.dart';
import 'package:solid_software_test/clean_architecture/infrastructure/colors/colors_repository_impl.dart';

import 'colors_repository_impl_test.mocks.dart';

@GenerateMocks([ColorsDataSource])
void main() {
  late ColorsDataSource colorsDataSource;
  late ColorsRepositoryImpl colorsRepository;

  const int tCheckValue = 1;
  const ColorsFailure tCheckFailure = ColorsFailure.unexpected();

  setUp(() {
    colorsDataSource = MockColorsDataSource();
    colorsRepository = ColorsRepositoryImpl(colorsDataSource);
  });

  group('getRandomColor', () {
    test('Should return RandomColor.', () {
      when(colorsDataSource.getRandomColorValue()).thenReturn(tCheckValue);

      final result = colorsRepository.getRandomColorValue();

      expect(result, const Right(RandomColor(colorValue: tCheckValue)));
    });

    test('Should return Failure.', () {
      when(colorsDataSource.getRandomColorValue()).thenThrow(Exception());

      final result = colorsRepository.getRandomColorValue();

      expect(result, const Left(tCheckFailure));
    });
  });
}
