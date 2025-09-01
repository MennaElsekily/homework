/* Q4
Create a program with a map of student names to their marks. Print the name of the student with
the highest mark.*/
void main() {
  Map<String, double> StudentsGrades = {
    "Ahmed": 94.5,
    "Ali": 95,
    "Menna": 98,
    "Samir": 92,
  };
  double highest = StudentsGrades.entries.first.value;
  String topStudent = '';

  for (var element in StudentsGrades.entries) {
    if (element.value > highest) {
      highest = element.value;
      topStudent = element.key;
    }
  }
  print(topStudent);
}
