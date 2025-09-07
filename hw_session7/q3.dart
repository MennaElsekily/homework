import 'dart:io';

void main() {
  print("Enter a word:");
  String word = stdin.readLineSync()!;

  // reverse the word
  String reversed = "";
  for (int i = word.length - 1; i >= 0; i--) {
    reversed += word[i];
  }

  // count vowels
  int vowels = 0;
  String lower = word.toLowerCase();
  for (int i = 0; i < lower.length; i++) {
    String ch = lower[i];
    if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
      vowels++;
    }
  }

  print("Reversed: $reversed");
  print("Vowels: $vowels");
}
