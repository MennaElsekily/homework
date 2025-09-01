/* Create a function that takes named parameters firstName, lastName, and an optional named
parameter age. Print the full name and, if age is provided, also print 'Age: X'.*/
void main() {
  ShowPersonInfo("Menna", "Elsokily", 23);
  ShowPersonInfo("Ahmed", "Ali");
}

void ShowPersonInfo(String firstName, String lastName, [double? age]) {
  print(" your full name: $firstName  $lastName");
  if (age != null) {
    print("Age:$age");
  }
}
