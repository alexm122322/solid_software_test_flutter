// ignore_for_file: avoid_late_keyword
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:solid_software_test/clean_architecture/application/colors/get_random_color_value/get_random_color_value_bloc.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/colors_failure.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/colors_repository.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/random_color.dart';

import 'get_random_colors_value_bloc_test.mocks.dart';

@GenerateMocks([ColorsRepository])
void main() {
  late ColorsRepository colorsRepository;
  late GetRandomColorValueBloc bloc;

  const tCheckValue = 1;
  const tCheckFailure = ColorsFailure.unexpected();

  setUp(() {
    colorsRepository = MockColorsRepository();
    bloc = GetRandomColorValueBloc(colorsRepository);
  });

  group('get event', () {
    test('Should emit [loading, loaded].', () {
      when(colorsRepository.getRandomColorValue()).thenReturn(
        const Right(RandomColor(colorValue: tCheckValue)),
      );

      final expected = [
        const GetRandomColorValueState.loading(),
        const GetRandomColorValueState.loaded(tCheckValue),
      ];

      expectLater(bloc.stream, emitsInOrder(expected));

      bloc.add(const GetRandomColorValueEvent.get());
    });

    test('Should emit [loading, failure].', () {
      when(colorsRepository.getRandomColorValue()).thenReturn(
        const Left(tCheckFailure),
      );

      final expected = [
        const GetRandomColorValueState.loading(),
        const GetRandomColorValueState.failure(tCheckFailure),
      ];

      expectLater(bloc.stream, emitsInOrder(expected));

      bloc.add(const GetRandomColorValueEvent.get());
    });
  });
}
