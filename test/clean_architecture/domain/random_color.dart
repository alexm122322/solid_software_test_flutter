import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/random_color.dart';
import 'package:solid_software_test/core/entity.dart';

void main() {
  const tCheckObject = RandomColor(colorValue: 1);
  test('Should be the Entity.', () {
    expect(tCheckObject, isA<Entity>());
  });
}
