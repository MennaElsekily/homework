import 'dart:io';
import 'dart:math';

void main() {
  print("Enter a number:");
  String numStr = stdin.readLineSync()!;
  List<int> digits = numStr.split('').map(int.parse).toList();

  int sum = digits.reduce((a, b) => a + b);
  int largest = digits.reduce(max);

  print("Digits: $digits");
  print("Sum of digits: $sum");
  print("Largest digit: $largest");
}
