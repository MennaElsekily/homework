/*Q6. Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains. -
Then print the shortest word and the longest word from the sentence.*/
import 'dart:io';

void main() {
  stdout.write('Enter a sentence: ');
  final s = stdin.readLineSync()?.trim() ?? '';
  if (s.isEmpty) {
    print('Word count: 0');
    return;
  }

  final words = s.split(RegExp(r'\s+'));
  print('Word count: ${words.length}');
  print(
    'Shortest word: ${words.reduce((a, b) => a.length <= b.length ? a : b)}',
  );
  print(
    'Longest word:  ${words.reduce((a, b) => a.length >= b.length ? a : b)}',
  );
}
