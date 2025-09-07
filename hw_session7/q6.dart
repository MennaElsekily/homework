/* Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
guess up to 3 times. If they fail, reveal the correct number.
*/
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int number = random.nextInt(20) + 1;
  int attempts = 3;

  print("Guess the number between 1 and 20 (3 tries):");
  for (int i = 1; i <= attempts; i++) {
    int guess = int.parse(stdin.readLineSync()!);
    if (guess == number) {
      print("Correct! You guessed it.");
      return;
    } else {
      print("Wrong guess. Attempts left: ${attempts - i}");
    }
  }
  print("Sorry, the correct number was $number");
}
