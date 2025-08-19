/* a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one.*/
void main() {
  String country = 'Egypt';
  int year = 2025;
  double weight = 60.5;
  bool likesCoding = true;
  print(
    "I live in $country, in the year $year, my weight is $weight, and do I like coding? $likesCoding",
  );
  weight = 95.5;
  print("updated weight is $weight");
}
