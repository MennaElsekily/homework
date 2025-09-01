/* Create a function that takes two integers as parameters and prints which one is larger.*/
void main() {
  int no1 = 10;
  int no2 = 5;
  compareNumbers(no1, no2);
}

void compareNumbers(int x, int y) {
  if (x > y) {
    print("$x is larger");
  } else if (y > x) {
    print("$y is larger");
  } else
    print("Both are equal");
}
