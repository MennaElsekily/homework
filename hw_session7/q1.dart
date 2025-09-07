/* Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
Then, check if the average is greater than 50 or not.*/
import 'dart:io';

void main() {
  print("Enter 3 numbers:");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  int sum = a + b + c;
  double avg = sum / 3;

  print("Sum: $sum");
  print("Average: $avg");
  print(
    avg > 50 ? "Average is greater than 50" : "Average is not greater than 50",
  );
}
