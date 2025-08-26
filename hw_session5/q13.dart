/* Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times
each name appears. Print only the names that appear more than once.*/
void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, int> nameCount = {};
  for (var name in names) {
    nameCount[name] = (nameCount[name] ?? 0) + 1;
  }
  for (var entry in nameCount.entries) {
    if (entry.value > 1) {
      print("${entry.key} appears ${entry.value} times");
    }
  }
}
