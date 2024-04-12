import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_test/clean_architecture/infrastructure/colors/colors_data_source.dart';
import 'package:solid_software_test/core/constants.dart';

void main() {
  final colorsDataSource = ColorsDataSourceImpl();
  const int countOfCheck = 10000;

  test('maxColorValue should be const value', () {
    expect(colorsDataSource.maxColorValue, maxColorValue);
  });

  group('getRandomColorValue', () {
    test('Should return not negative value.', () {
      for (int i = 0; i <= countOfCheck; i++) {
        expect(colorsDataSource.getRandomColorValue() >= 0, true);
      }
    });

    test('Should return not not more then [maxColorValue] value.', () {
      for (int i = 0; i <= countOfCheck; i++) {
        expect(
          colorsDataSource.getRandomColorValue() <
              colorsDataSource.maxColorValue,
          true,
        );
      }
    });
  });
}
