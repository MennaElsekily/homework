/*Create a program that calculates the factorial of 6 and prints the result.*/
import 'dart:io';

void main() {
  print("Please Enter number");
  int num = int.parse(stdin.readLineSync()!);
  int fact = 1;
  while (num > 1) {
    fact *= num;
    num--;
  }
  print(fact);
}
