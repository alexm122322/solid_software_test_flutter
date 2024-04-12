import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/colors_failure.dart';
import 'package:solid_software_test/core/failure.dart';

void main() {
  const tCheckObject = ColorsFailure.unexpected();
  test('Should be the Failure.', () {
    expect(tCheckObject, isA<Failure>());
  });
}
