/*Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list.*/
// Q7: Super beginner-friendly version (no regex, very simple)
import 'dart:io';

void main() {  print('How many numbers? ');
  int n = int.parse(stdin.readLineSync()!); 
  List<int> nums = [];
  for (int i = 1; i <= n; i++) {
    print('Enter number $i: ');
    int value = int.parse(stdin.readLineSync()!); 
    nums.add(value);
  }
  
  if (nums.isEmpty) {
    print('No numbers provided.');
    return;
  }

  
  int largest = nums[0];
  int smallest = nums[0];
  int sum = 0;
  int evenCount = 0;
  int oddCount = 0;

  for (int i = 0; i < nums.length; i++) {
    int x = nums[i];
    if (x > largest) largest = x;
    if (x < smallest) smallest = x;
    sum += x;
    if (x % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
    
  }

  double average = sum / nums.length;

  List<int> aboveAverage = [];
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] > average) {
      aboveAverage.add(nums[i]);
    }
  }

  print('Largest: $largest');
  print('Smallest: $smallest');
  print('Difference: ${largest - smallest}');
  print('Average: ${average.toStringAsFixed(2)}');
  if (aboveAverage.isEmpty) {
    print('Numbers above average: None');
  } else {
    print('Numbers above average: $aboveAverage');
  }
  print('Even count: $evenCount, Odd count: $oddCount');
}
