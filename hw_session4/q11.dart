/*Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.*/
import 'dart:io';

import 'dart:io';

void main() {
  print("Are you a student? (yes/no): ");
  bool isStudent = stdin.readLineSync() == "yes";

  print("Do you have a coupon? (yes/no): ");
  bool hasCoupon = stdin.readLineSync() == "yes";

  double price = 155.5;

  if (isStudent) {
    price *= 0.9;
  } else if (hasCoupon) {
    price *= 0.85;
  } else if (price > 100) {
    price *= 0.80;
  }

  print("Final price: ${price.toStringAsFixed(2)}");
}
