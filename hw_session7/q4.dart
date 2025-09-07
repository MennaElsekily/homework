import 'dart:io';
import 'dart:math';

void main() {
  List<int> numbers = [];
  print("Enter 5 numbers:");
  for (int i = 0; i < 5; i++) {
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  int maxNum = numbers.reduce(max);
  int minNum = numbers.reduce(min);
  int diff = maxNum - minNum;

  print("Numbers: $numbers");
  print("Largest: $maxNum");
  print("Smallest: $minNum");
  print("Difference: $diff");
}
