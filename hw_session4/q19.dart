/* Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than once */
void main() {
  List<String> Names = ["Ahmed", "Ali", "Samir", "Mohamed", "Samir", "Ahmed"];
  Set<String> UniqueNames = Names.toSet();

  Map<String, int> counts = {"Ahmed": 2, "Ali": 1, "Samir": 2, "Mohamed": 1};

  print("Unique names: $UniqueNames");
  print("Counts: $counts");

  if (Names.length != UniqueNames.length) {
    print("Duplicates found.");
  }

  if ((counts["Ahmed"] ?? 0) > 1) {
    print("Ahmed appears more than once.");
  }
}
