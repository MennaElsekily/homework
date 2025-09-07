import 'dart:io';

void main() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> odds = [];
  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) odds.add(i);
  }

  print("Odd numbers: $odds");
  print("Count: ${odds.length}");
}
