/* Q3
Create a program with a set of numbers [3, 6, 9, 3, 12, 15]. Print whether the set contains the
number 10.*/
void main() {
  Set<int> nums = {3, 6, 9, 3, 12, 15};
  bool isContain10 = nums.contains(10);
  print(isContain10);
}
