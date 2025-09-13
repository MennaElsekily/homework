/*Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
print the total count of unique words.*/
import 'dart:io';

void main() {
  print("Please enter a sentence");
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(' ').where((w) => w.isNotEmpty).toList();
  Set<String> seen = {};
  Set<String> dup = {};
  for (final w in words) {
    if (!seen.add(w)) {
      dup.add(w);
    }
  }
  Set<String> singles = seen.difference(dup);
  print("Words that appear only once:");
  if (singles.isEmpty) {
    print("(none)");
  } else {
    for (final w in singles) {
      print(w);
    }
  }
  print("Total unique words: ${singles.length}");
}
