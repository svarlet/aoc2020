import 'package:test/test.dart';

class Scanner {
  static int scan(List<int> numbers) {
    for (var i = 0; i < numbers.length; i++) {
      for (var j = i + 1; j < numbers.length; j++) {
        if (numbers[i] + numbers[j] == 2020) {
          return numbers[i] * numbers[j];
        }
      }
    }
    throw ArgumentError(
        'The provided list does not contain a pair that sums to 2020.');
  }
}

void main() {
  test('Given a list containing 2020 and 0, returns 0', () {
    const numbers = [2020, 0];
    expect(Scanner.scan(numbers), equals(0));
  });

  test('Given a list containing 2019 and 1, returns 2019', () {
    const numbers = [2019, 1];
    expect(Scanner.scan(numbers), equals(2019));
  });

  test('Given a list containing 2015, 3, and 5, returns 10075', () {
    const numbers = [2015, 3, 5];
    expect(Scanner.scan(numbers), equals(10075));
  });

  test('Given a list containing 0, 2012, 8, returns 16096', () {
    const numbers = [0, 2012, 8];
    expect(Scanner.scan(numbers), equals(16096));
  });

  test('Given a list with no 2 elements adding up to 2020, raises an error',
      () {
    expect(() => Scanner.scan([0, 0]), throwsArgumentError);
  });
}
