/*Q2
Create a program with the list [5, 10, 15, 20, 25]. Print the average of the numbers*/
void main() {
  int sum = 0;
  double avg = 0.0;
  List<int> nums = [5, 10, 15, 20, 25];
  for (var element in nums) {
    sum += element;
  }
  avg = sum / nums.length;
  print(avg);
}
