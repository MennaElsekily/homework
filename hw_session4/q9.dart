/*Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed.*/
void main() {
  List<String> names = ['ali', 'ahmed', 'samir', 'mohamed', 'ahmed', 'samir'];
  Set<String> NewNames = names.toSet();
  print(names.length);
  print(NewNames.length);
  if (names.length != NewNames.length) {
    print("Duplicates were removed");
  } else
    print("No duplicates foind");
}
