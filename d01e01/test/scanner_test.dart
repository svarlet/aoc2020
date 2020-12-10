import 'package:test/test.dart';

class Scanner {
  static const desiredSum = 2020;

  static int scan(List<int> numbers) {
    for (var i = 0; i < numbers.length; i++) {
      for (var j = i + 1; j < numbers.length; j++) {
        final pair = Pair(numbers[i], numbers[j]);
        if (pair.sum == desiredSum) {
          return pair.product;
        }
      }
    }
    throw ArgumentError(
        'The provided list does not contain a pair that sums to 2020.');
  }
}

class Pair {
  final int i, j;

  Pair(this.i, this.j);

  int get sum => i + j;

  int get product => i * j;
}

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
