import 'package:test/test.dart';

class Scanner {
  static int scan(List<int> numbers) {
    final x = numbers.first;
    final y = numbers.firstWhere((element) => 2020 == element + x);
    return x * y;
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
}
