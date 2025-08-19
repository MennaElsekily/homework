/* Exercise 9:
9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double.*/
void main() {
  List<Map<String, dynamic>> students = [
    {"name": "ahmed", "grade": 3.5},
    {"name": "salma", "grade": 2.3},
  ];
  print(students[1]["grade"]);
  double total = (students[0]["grade"] + students[1]["grade"]);
  double avg = total / 2;
  print(avg);
}
