import 'package:test/test.dart';

class Scanner {
  static int scan(List<int> numbers) {
    final x = numbers.first;
    final y = numbers.elementAt(1);
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
}
