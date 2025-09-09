/*Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
number and the second largest number (without sorting the list).*/
import 'dart:io';

void main() {
  int? max1, max2;

  for (var i = 1; i <= 6; i++) {
    stdout.write('Enter number $i: ');
    final x = int.parse(stdin.readLineSync()!);

    if (max1 == null || x > max1) {
      max2 = max1;
      max1 = x;
    } else if (x < max1 && (max2 == null || x > max2)) {
      max2 = x;
    }
  }

  print('Largest: $max1');
  print('Second largest: ${max2 ?? 'N/A (no distinct second)'}');
}
