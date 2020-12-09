import 'package:test/test.dart';

class Scanner {
  static int scan(numbers) {
    return 0;
  }
}

void main() {
  test('Given a list containing 2020 and 0, returns 0', () {
    const numbers = [2020, 0];
    expect(Scanner.scan(numbers), equals(0));
  });
}
