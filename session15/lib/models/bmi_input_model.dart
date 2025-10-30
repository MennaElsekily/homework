class BMIInputModel {
  double height;
  int weight;
  String gender;
  int age;

  BMIInputModel({
    this.height = 170,
    this.weight = 70,
    this.gender = "Male",
    this.age = 20,
  });
  @override
  String toString() {
    return "BMIInputModel{height: $height, weight: $weight, gender: $gender, age: $age}";
  }

  double calculateBmi() => weight / (height * height);
}
