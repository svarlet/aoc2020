import 'package:d01e01/pair.dart';

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
