import 'package:test/test.dart';
import 'package:d01e01/scanner.dart';

void main() {
  group('Success cases', () {
    const expectations = {
      [2020, 0]: 0,
      [2019, 1]: 2019,
      [2015, 3, 5]: 10075,
      [0, 2012, 8]: 16096,
    };

    expectations.forEach((key, value) {
      test('Given the list $key, returns $value', () {
        expect(Scanner.scan(key), equals(value));
      });
    });
  });

  test('Given a list with no 2 elements adding up to 2020, raises an error',
      () {
    expect(() => Scanner.scan([0, 0]), throwsArgumentError);
  });
}
