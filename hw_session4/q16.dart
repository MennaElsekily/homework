/* Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.*/
void main() {
  int x = 10;
  int y = 20;
  int z = 30;
  print(x > y);
  print(y > z);
  print(z > x);
  if ((x + y) == z) {
    print("Rule passed");
  } else
    print("Rule failed");
}
