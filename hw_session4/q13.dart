/*Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.*/
import 'dart:io';

void main() {
  String grade;
  print("Please Enter your mark");
  double mark = double.parse(stdin.readLineSync()!);
  if (mark >= 95) {
    grade = 'A';
  } else if (mark >= 85) {
    grade = 'B';
  } else if (mark >= 75) {
    grade = 'C';
  } else {
    grade = 'D';
  }
  switch (grade) {
    case 'A':
      print("Excellent!");
      break;
    case 'B':
      print("Very Good");
      break;
    case 'C':
      print("Good");
      break;
    case 'D':
      print("Poor");
      break;
    default:
      print("Invalid Grade");
  }
}
