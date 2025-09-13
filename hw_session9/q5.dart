/*Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
courses: one with custom duration and one with the default. Print both.*/
class Course {
  String title;
  String duration;
  Course(this.title, {this.duration = "3 months"});
}

void main() {
  Course course1 = Course("Flutter Development", duration: "6 months");
  Course course2 = Course("Python Basics");

  print("course name: ${course1.title} course duration: ${course1.duration}");
  print("course name: ${course2.title} course duration: ${course2.duration}");
}
