/* Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
and how many characters (excluding spaces).
*/
import 'dart:io';

void main() {
  print("Enter a sentence:");
  String sentence = stdin.readLineSync()!;

  int wordCount = sentence.trim().split(" ").length;
  int charCount = sentence.replaceAll(" ", "").length;

  print("Words: $wordCount");
  print("Characters (excluding spaces): $charCount");
}
